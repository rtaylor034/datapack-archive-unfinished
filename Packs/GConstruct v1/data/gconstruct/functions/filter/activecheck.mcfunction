
#Called when filter has an item inside

#PHYSICAL ITEM CHECK
execute if entity @e[type=item,distance=0..3] run function gconstruct:filter/itemactive

#BLOCK CONTAINER CHECK
execute if data block ~ ~1 ~ Items[] run function gconstruct:filter/containeractive
