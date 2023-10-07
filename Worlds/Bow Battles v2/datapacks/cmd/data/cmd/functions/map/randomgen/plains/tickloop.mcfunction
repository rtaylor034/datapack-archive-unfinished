
scoreboard players add ticks mapgen 1

execute as @e[type=minecraft:area_effect_cloud,tag=origin] at @s run function cmd:map/randomgen/plains/originbase
#LOOP
execute if score ticks mapgen matches 3000 run kill @e[type=minecraft:area_effect_cloud,tag=mapgen]
execute if score ticks mapgen matches 1..3000 run schedule function cmd:map/randomgen/plains/tickloop 1t
