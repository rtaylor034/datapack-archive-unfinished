
#Called recursively to check each item in a container.

#SAFE SLOT CHECK

data modify storage gconstruct:temp/gui/itemsafety findslot set from storage gconstruct:temp/gui/itemsafety Items[0].Slot

#FIND ITEM
execute store result score #foundslot local run data modify storage gconstruct:temp/gui/itemsafety findslot set from storage gconstruct:temp/gui/itemsafety safetemp[0]


#CYCLE
data remove storage gconstruct:temp/gui/itemsafety safetemp[0]
execute if score #foundslot local matches 0 run data remove storage gconstruct:temp/gui/itemsafety safetemp


execute if data storage gconstruct:temp/gui/itemsafety safetemp[] run function gconstruct:gui/itemsafety/checksafeslots
