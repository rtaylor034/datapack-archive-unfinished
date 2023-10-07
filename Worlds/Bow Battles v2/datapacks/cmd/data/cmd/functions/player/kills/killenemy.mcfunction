
#\NOT YET IMPLEMENTED\

#VFX
say i killed an enemy
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.8 1
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.8 1.2

#SCORES
scoreboard players add @s gold 300
scoreboard players add @s[scores={zone=1}] gold 150

#ADVANCEMENTS
advancement revoke @s only cmd:kills/redonblue
advancement revoke @s only cmd:kills/blueonred
advancement revoke @s only cmd:kills/ffa
