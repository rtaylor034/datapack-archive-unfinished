#CALL: player/main
#called when xphealth_timer hits 0 on @s


#subtract from scrore
scoreboard players remove @s xphealth_score 20
scoreboard players set @s[scores={xphealth_score=..-1}] xphealth_score 0

#display
function xphealth:player/displayscore/run

#set update timer
execute unless score @s xphealth_score > score_thresh4 xphealth_global store result score @s xphealth_timer run data get storage xphealth:controls updateInterval
execute if score @s xphealth_score > score_thresh4 xphealth_global store result score @s xphealth_timer run data get storage xphealth:controls overloadInterval

#food timer mult
execute store result score fmult slime_var run data get storage xphealth:controls satiatedMultiplier
execute if score @s xphealth_foodT matches 9.. run scoreboard players operation @s[tag=!xphealth-dying] xphealth_timer *= fmult slime_var

#effects
execute if score @s xphealth_score > score_thresh4 xphealth_global run effect give @s speed 1 1 true
execute if score @s xphealth_foodT matches 9.. run effect give @s hunger 1 50 true
execute if score @s xphealth_foodT matches ..7 run effect give @s saturation 1 0 true

#death
execute as @s[tag=!xphealth-dying,scores={xphealth_score=0}] run function xphealth:player/death/start
#VFX
execute if score @s xphealth_score matches 0 run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.66
execute if score @s xphealth_score matches 0 run playsound entity.allay.hurt master @s ~ ~ ~ 0.5 0
execute if score @s xphealth_score matches 1.. if score @s xphealth_score < score_thresh1 xphealth_global run playsound block.note_block.snare master @s ~ ~ ~ 0.4 0.89
execute unless score @s xphealth_score < score_thresh1 xphealth_global if score @s xphealth_score < score_thresh2 xphealth_global run playsound block.note_block.snare master @s ~ ~ ~ 0.2 1.059
execute unless score @s xphealth_score < score_thresh2 xphealth_global if score @s xphealth_score < score_thresh3 xphealth_global run playsound block.note_block.snare master @s ~ ~ ~ 0.1 1.334
execute unless score @s xphealth_score < score_thresh3 xphealth_global if score @s xphealth_score < score_thresh4 xphealth_global run playsound block.note_block.snare master @s ~ ~ ~ 0.1 1.587
execute if score @s xphealth_score >= score_thresh4 xphealth_global run playsound block.note_block.snare master @s ~ ~ ~ 0.3 1.781

#RESETS
scoreboard players reset subtract slime_var
scoreboard players reset fmult slime_var
