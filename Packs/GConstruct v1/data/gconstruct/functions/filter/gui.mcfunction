

#GUI
data modify storage gconstruct:temp/gui/itemsafety safeslots set value [4b]
function gconstruct:gui/itemsafety/run
data modify block ~ ~ ~ Items append from storage gconstruct:gui/filter Items[]
