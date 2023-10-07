
#IN - [gconstruct:temp/gui/itemsafety -> safeslots[]] - MUST BE AN ARRAY, INCLUDE "b" AFTER NUMBER

#USE - ensures that if a player places an item inside a gui occupied slot, they will get their item back. Call just before appending gui items to the main Items array inside a container.
#NOTE - Input defines what slots are NOT occupied by GUI items.

data modify storage gconstruct:temp/gui/itemsafety Items set from block ~ ~ ~ Items

execute if data storage gconstruct:temp/gui/itemsafety Items[] run function gconstruct:gui/itemsafety/checkitems

execute if score #founditem local matches 1 run function gconstruct:gui/itemsafety/createitem
