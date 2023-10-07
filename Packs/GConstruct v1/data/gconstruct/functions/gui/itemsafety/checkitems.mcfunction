
#Called recursively to check each item in a container.

#SAFE SLOT CHECK
data modify storage gconstruct:temp/gui/itemsafety safetemp set from storage gconstruct:temp/gui/itemsafety safeslots
function gconstruct:gui/itemsafety/checksafeslots
# (#foundslot -> local) is set to 0 if this item is a safe slot

#FIND ITEM
scoreboard players set #founditem local 0
execute unless score #foundslot local matches 0 store success score #founditem local unless data storage gconstruct:temp/gui/itemsafety Items[0].tag.gcGUI run data modify storage gconstruct:temp/gui/itemsafety foundItem set from storage gconstruct:temp/gui/itemsafety Items[0]

#CYCLE
data remove storage gconstruct:temp/gui/itemsafety Items[0]
execute unless score #foundslot local matches 0 if score #founditem local matches 1 run data remove storage gconstruct:temp/gui/itemsafety Items


execute if data storage gconstruct:temp/gui/itemsafety Items[] run function gconstruct:gui/itemsafety/checkitems
