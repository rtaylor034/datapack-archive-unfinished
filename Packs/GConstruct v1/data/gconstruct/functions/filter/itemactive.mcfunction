
#Called when filter has an item and there is an item within 3 blocks

#TAGS ITEMS FOR CHECKING
execute positioned ~ ~.5 ~ run tag @e[type=item,distance=0..0.6] add gconfilti

#COUNT SET
execute store result score @s gcon_filtercount run data get block ~ ~ ~ Items[{Slot:4b}].Count


#CHECKS ALL ITEMS RECURSIVELY
execute as @e[type=item,tag=gconfilti] store result score @s gcon_filtercount run data get entity @s Item.Count
execute if entity @e[type=item,tag=gconfilti] run function gconstruct:filter/checkitem
tag @e[type=item,distance=0..3] remove gconfiltid
tag @e[type=item,distance=0..3] remove gconfilti
