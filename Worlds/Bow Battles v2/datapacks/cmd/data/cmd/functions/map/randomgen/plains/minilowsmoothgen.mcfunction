

spreadplayers ~ ~ 0 78 under 50 false @e[type=minecraft:area_effect_cloud,tag=helper]
execute as @e[type=minecraft:area_effect_cloud,tag=helper] at @s if blocks ~-1 ~-1 ~-1 ~1 ~-1 ~1 ~-1 ~-7 ~-1 all at @e[type=minecraft:area_effect_cloud,tag=origin] run spreadplayers ~ ~ 0 78 under 55 false @s
execute as @e[type=minecraft:area_effect_cloud,tag=helper] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 sand keep
