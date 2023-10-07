

#ITEM SET
execute as @s[tag=!gcsiesis] at @s if data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b}].tag.BlockEntityTag run function gconstruct:sies/setitem

#ITEM DISPLAY
execute as @s[tag=!gcsiesid,tag=gcsiesis] at @s run function gconstruct:sies/spawnditem

#REPLACE
data modify storage gconstruct:temp/gui/itemsafety safeslots set value [3b,5b]
function gconstruct:gui/itemsafety/run
data modify block ~ ~ ~ Items append from storage gconstruct:gui/sies Items[]

#ACTIVE
execute as @s[tag=gcsiesis] at @s run function gconstruct:sies/active
