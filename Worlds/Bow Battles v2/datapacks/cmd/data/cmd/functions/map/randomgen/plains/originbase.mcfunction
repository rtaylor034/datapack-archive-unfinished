
execute if score ticks mapgen matches 1 run function cmd:map/randomgen/plains/makebase
execute if score ticks mapgen matches 2..11 run function cmd:map/randomgen/plains/summonhelper
execute if score ticks mapgen matches 11..500 run function cmd:map/randomgen/plains/roughgen
execute if score ticks mapgen matches 500..620 run function cmd:map/randomgen/plains/roughexpl
execute if score ticks mapgen matches 600..800 run function cmd:map/randomgen/plains/roughgen
execute if score ticks mapgen matches 1200..1500 run function cmd:map/randomgen/plains/smoothlowgen
execute if score ticks mapgen matches 800..1500 run function cmd:map/randomgen/plains/smoothgen
execute if score ticks mapgen matches 800..1500 run function cmd:map/randomgen/plains/smoothgen
execute if score ticks mapgen matches 1000..2000 run function cmd:map/randomgen/plains/minismoothgen
execute if score ticks mapgen matches 10..2000 run function cmd:map/randomgen/plains/minismoothgen
execute if score ticks mapgen matches 1000..2000 run function cmd:map/randomgen/plains/minilowsmoothgen
execute if score ticks mapgen matches 2000 run kill @e[type=minecraft:area_effect_cloud,tag=helper]
#BIG LAG
execute if score ticks mapgen matches 2000 run function cmd:map/randomgen/plains/gravellayer
execute if score ticks mapgen matches 2010 run function cmd:map/randomgen/plains/gravellayer
execute if score ticks mapgen matches 2020 run function cmd:map/randomgen/plains/gravellayer
execute if score ticks mapgen matches 2030 run function cmd:map/randomgen/plains/gravellayer
execute if score ticks mapgen matches 2040 run function cmd:map/randomgen/plains/gravellayer
execute if score ticks mapgen matches 1..2050 as @e[type=minecraft:falling_block] run data merge entity @s {Motion:[0.0,-8.0,0.0]}
execute if score ticks mapgen matches 2100 run function cmd:map/randomgen/plains/summonhelper
execute if score ticks mapgen matches 2100..2200 run function cmd:map/randomgen/plains/convertland

#WATER
execute if score ticks mapgen matches 2100..2101 run function cmd:map/randomgen/plains/summonhelper
execute if score ticks mapgen matches 2101 run spreadplayers ~ ~ 0 72 false @e[type=minecraft:area_effect_cloud,tag=helper]
execute if score ticks mapgen matches 2102..2112 as @e[type=minecraft:area_effect_cloud,tag=helper] at @s summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mapgen","helper2"],Duration:99999}
execute if score ticks mapgen matches 2120 run function cmd:map/randomgen/plains/watergen
