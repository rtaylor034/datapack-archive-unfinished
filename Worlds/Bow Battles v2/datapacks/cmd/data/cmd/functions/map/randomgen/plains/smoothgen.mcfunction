

spreadplayers ~ ~ 0 78 false @e[type=minecraft:area_effect_cloud,tag=helper]
execute as @e[type=minecraft:area_effect_cloud,tag=helper] at @s if blocks ~-2 ~-1 ~-2 ~2 ~-1 ~-2 ~-2 ~-7 ~-2 all at @e[type=minecraft:area_effect_cloud,tag=origin] run spreadplayers ~ ~ 0 78 false @s
execute as @e[type=minecraft:area_effect_cloud,tag=helper] at @s run fill ~2 ~-2 ~3 ~-2 ~-1 ~-2 sand keep
execute as @e[type=minecraft:area_effect_cloud,tag=helper] at @s run fill ~1 ~ ~1 ~-1 ~-3 ~-1 sand keep
