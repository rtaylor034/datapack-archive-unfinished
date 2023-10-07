
#CALL - blocks/itemfilter/base
#DESC - called on the tick this item filter is placed (marker tagged "gcon-block-place")
#CONTEXT - This Entity


#block
setblock ~ ~ ~ minecraft:dropper[facing=down,triggered=true]{CustomName:'{"text":"Item Filter"}'} destroy

#sound
playsound minecraft:block.metal.place block @a ~ ~ ~ 0.7 1.2


#gui
data modify storage gconstruct:param generate.gui set value [{slot:0b,id:1},{slot:1b,id:1},{slot:2b,id:1},{slot:3b,id:1},{slot:5b,id:1},{slot:6b,id:1},{slot:7b,id:1},{slot:8b,id:1}]
function gconstruct:method/block/gui/generate/run
data modify storage gconstruct:var place.gui set from storage gconstruct:out generate.items

#store data
data modify entity @s data merge from storage gconstruct:var place

#RESETS
tag @s remove gcon-block-place
data remove storage gconstruct:var place
