
#called from points on bridge after impact

#SCORE
scoreboard players add @s 308btime 1

#VFX
execute as @s[tag=red] run particle minecraft:dust -.1 0 0 1.5 ~ ~-1 ~ 0 0 0 0 1 force
execute as @s[tag=ffa] run particle minecraft:dust -.5 -.5 -.5 1.5 ~ ~-1 ~ 0 0 0 0 1 force
execute as @s[tag=blue] run particle minecraft:dust 0 0 -.1 1.5 ~ ~-1 ~ 0 0 0 0 1 force

#BLOCK
execute as @s[scores={308btime=21..}] at @s run function cmd:arrows/308/placeblock
