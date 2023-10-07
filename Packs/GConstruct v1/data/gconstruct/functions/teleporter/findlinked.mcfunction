
#ITEM STORAGE
data modify storage gconstruct:temp/tpitem Item set from block ~ ~ ~ Items[{Slot:1b}]

tag @s add gctpsearch
execute as @e[type=area_effect_cloud,tag=gctelep,tag=!gctpsearch,sort=nearest,distance=0.1..] at @s run function gconstruct:teleporter/checklinked
tag @s remove gctpsearch
