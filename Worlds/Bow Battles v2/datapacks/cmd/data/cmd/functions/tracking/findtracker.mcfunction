
tag @s add tsearch
execute as @e[type=area_effect_cloud,tag=tracker] at @s if score @s randomid = @e[tag=tsearch,limit=1] randomid run tag @s add tfound
tag @s remove tsearch







