

#GUI
data modify storage gconstruct:temp/gui/itemsafety safeslots set value [1b]
function gconstruct:gui/itemsafety/run
data modify block ~ ~ ~ Items append from storage gconstruct:gui/teleporter Items[]
