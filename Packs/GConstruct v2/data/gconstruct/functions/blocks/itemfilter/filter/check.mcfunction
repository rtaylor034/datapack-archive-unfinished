
#CALL - blocks/itemfilter/base
#DESC - called if the item filter has an item in its active slot
#CONTEXT - This

#ref data
execute store success score filter.force gcon_var run data modify entity @s data.filter.item set from storage gconstruct:var block.items[{Slot:4b}]

#CONTAINER
execute store success score filter.check gcon_var run data modify entity @s data.filter.container.items set from block ~ ~1 ~ Items
execute if score filter.force gcon_var matches 1 run scoreboard players set filter.check gcon_var 1
execute if score filter.check gcon_var matches 1 run function gconstruct:blocks/itemfilter/filter/container

#ITEM
execute positioned ~ ~1 ~ run tag @e[type=item,distance=0..0.5] add gcon-filter-item
execute if entity @e[type=item,tag=gcon-filter-item] run data modify storage gconstruct:var filter.item set from entity @s data.filter.item
execute if entity @e[type=item,tag=gcon-filter-item] run function gconstruct:blocks/itemfilter/filter/entity


#RESETS
data remove storage gconstruct:var filter
scoreboard players reset filter.check gcon_var
scoreboard players reset filter.force gcon_var
scoreboard players reset filter.found gcon_var
