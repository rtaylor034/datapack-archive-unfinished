
#FIND
function gconstruct:teleporter/findlinked
execute if entity @e[type=area_effect_cloud,tag=gctpfound] run function gconstruct:teleporter/teleport

#TAG
tag @e[type=area_effect_cloud] remove gctpfound
