
#CALL - blocks/itemfilter/filter/check
#DESC - called if the item filter has item entities above it (tagged gcon-filter-item)
#CONTEXT - this

#tag
tag @e[type=item,limit=1,tag=gcon-filter-item] add gcon-filter-c

#compare
data modify storage gconstruct:var filter.find set from storage gconstruct:var filter.item
execute as @e[type=item,tag=gcon-filter-c] store success score filter.found gcon_var run data modify storage gconstruct:var filter.find.id set from entity @s Item.id

execute if score filter.found gcon_var matches 0 as @e[type=item,tag=gcon-filter-c] run function gconstruct:blocks/itemfilter/filter/dispense/entity

#reset tag
tag @e[type=item,tag=gcon-filter-c] remove gcon-filter-item
tag @e[type=item,tag=gcon-filter-c] remove gcon-filter-c


#loop
execute if entity @e[type=item,tag=gcon-filter-item] run function gconstruct:blocks/itemfilter/filter/entity
