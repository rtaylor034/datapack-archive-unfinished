
#CALL - blocks/gui/safety
#DESC - Called when an item is found in a gui slot, gives item back
#CONTEXT - nearest player

#base item
summon item ~ ~ ~ {Tags:["init"],Item:{id:"minecraft:slime_ball",Count:1}}

#modify item
data modify entity @e[type=item,tag=init,limit=1,sort=nearest] Item set from storage gconstruct:var gui.block.items[0]

#remove tag
tag @e[type=item] remove init
