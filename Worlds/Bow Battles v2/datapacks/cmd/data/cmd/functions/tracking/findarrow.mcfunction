
tag @s add asearch
execute as @e[type=arrow] at @s if score @s randomid = @e[tag=asearch,limit=1] randomid run tag @s add afound
tag @s remove asearch







