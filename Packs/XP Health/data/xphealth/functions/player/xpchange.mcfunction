#CALL: player/main
#Called when this player has a change in their xp value


#DIFFERENCT CALC
execute store result score xpdiff slime_var run scoreboard players operation @s xphealth_prevxp -= @s xphealth_xpT
scoreboard players set n1 slime_var -1
scoreboard players operation xpdiff slime_var *= n1 slime_var

#SCORE CHANGE
execute store result score xpmult slime_var run data get storage xphealth:controls ticksPerXP
scoreboard players operation xpmult slime_var *= xpdiff slime_var
scoreboard players operation @s xphealth_score += xpmult slime_var

#armor
execute store result score armormult slime_var run data get storage xphealth:controls armorReduction
scoreboard players operation armormult slime_var *= @s xphealth_armorT
scoreboard players operation armormult slime_var *= xpdiff slime_var
scoreboard players operation @s xphealth_score -= armormult slime_var

#lapis gen
scoreboard players operation gen slime_var = @s xphealth_score
scoreboard players operation gen slime_var -= score_thresh5 xphealth_global
execute if score gen slime_var matches 1.. run scoreboard players operation @s xphealth_genscore += gen slime_var
execute if score @s xphealth_genscore >= lapis_thresh xphealth_global run function xphealth:player/genlapis
execute if score @s xphealth_score > score_thresh5 xphealth_global run scoreboard players operation @s xphealth_score = score_thresh5 xphealth_global

#DECAY
execute store result score dodelay slime_var run data get storage xphealth:controls decayDelayOnXP
execute if score dodelay slime_var matches 1 store result score @s xphealth_timer run data get storage xphealth:controls updateInterval

#DEATH
execute as @s[tag=xphealth-dying,scores={xphealth_score=1..}] run function xphealth:player/death/revive

#display
function xphealth:player/displayscore/run

#prevcheck update
scoreboard players operation @s xphealth_prevxp = @s xphealth_xpT

#VFX
execute if score @s xphealth_score < score_thresh1 xphealth_global run playsound block.note_block.chime master @s ~ ~ ~ 1 0.89
execute unless score @s xphealth_score < score_thresh1 xphealth_global if score @s xphealth_score < score_thresh2 xphealth_global run playsound block.note_block.chime master @s ~ ~ ~ 1 1.059
execute unless score @s xphealth_score < score_thresh2 xphealth_global if score @s xphealth_score < score_thresh3 xphealth_global run playsound block.note_block.chime master @s ~ ~ ~ 0.8 1.334
execute unless score @s xphealth_score < score_thresh3 xphealth_global if score @s xphealth_score < score_thresh4 xphealth_global run playsound block.note_block.chime master @s ~ ~ ~ 0.6 1.587
execute if score @s xphealth_score >= score_thresh4 xphealth_global run playsound block.note_block.chime master @s ~ ~ ~ 0.5 1.781
execute if score @s xphealth_score = score_thresh5 xphealth_global run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 1.781

#RESETS
scoreboard players reset xpdiff slime_var
scoreboard players reset dodelay slime_var
scoreboard players reset n1 slime_var
scoreboard players reset armormult slime_var
scoreboard players reset gen slime_var
