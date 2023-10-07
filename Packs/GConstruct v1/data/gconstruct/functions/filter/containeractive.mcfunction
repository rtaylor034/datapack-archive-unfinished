
#Called when filter has an item inside and has a container block above with items inside

#LOOPS SET
execute store result score #gconFiltLoops local if data block ~ ~1 ~ Items[]

#FILTER AND CONTAINER SET
data modify storage gconstruct:filter/check FilterItem set from block ~ ~ ~ Items[{Slot:4b}]
data modify storage gconstruct:filter/container Items set from block ~ ~1 ~ Items

#CHECKING
function gconstruct:filter/checkcontainer

#FILTER
execute if score #gconFiltFind local matches 0 run function gconstruct:filter/filtercontainer
