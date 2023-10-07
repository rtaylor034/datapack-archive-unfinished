
#Called when filter finds an item above it, and recursively called until all items are checked.

#TAG FOR CHECK
tag @e[type=item,tag=gconfilti,tag=!gconfiltid,limit=1,sort=nearest] add gconfiltic

#test if item id matches (gcon_filtermatch should be 0 if match)
data modify storage gconstruct:filter/check FilterItem set from block ~ ~ ~ Items[{Slot:4b}]
execute as @e[type=item,tag=gconfiltic,limit=1] store success score @s gcon_filtermatch run data modify storage gconstruct:filter/check FilterItem.id set from entity @s Item.id

#checks if item count is bigger or equal
execute if score @s gcon_filtercount > @e[type=item,tag=gconfiltic,limit=1] gcon_filtercount run scoreboard players set @e[type=item,tag=gconfiltic,limit=1] gcon_filtermatch 1

#filters items that match
execute as @e[type=item,tag=gconfiltic,limit=1,scores={gcon_filtermatch=0}] run function gconstruct:filter/filteritem

#TAGS
#already checked this tick
tag @e[type=item,tag=gconfiltic,limit=1] add gconfiltid
#removing tag for currently checking
tag @e[type=item,distance=0..3] remove gconfiltic

execute if entity @e[type=item,tag=gconfilti,tag=!gconfiltid] run function gconstruct:filter/checkitem
