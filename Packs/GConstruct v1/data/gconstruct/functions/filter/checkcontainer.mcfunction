
#Called recursively to check each item in a container.

#INCREMENT
scoreboard players remove #gconFiltLoops local 1

#CHECKITEM SET
data modify storage gconstruct:filter/check checkItem set from storage gconstruct:filter/check FilterItem.id

#CYCLE
data modify storage gconstruct:filter/container Items append from storage gconstruct:filter/container Items[0]
data remove storage gconstruct:filter/container Items[0]

#SEARCH
execute store success score #gconFiltFind local run data modify storage gconstruct:filter/check checkItem set from storage gconstruct:filter/container Items[0].id
execute unless data storage gconstruct:filter/container Items[0].tag.gcGUI if score #gconFiltFind local matches 0 run scoreboard players set #gconFiltLoops local 0
execute if data storage gconstruct:filter/container Items[0].tag.gcGUI run scoreboard players set #gconFiltFind local 1
#RECUR
execute if score #gconFiltLoops local matches 1.. run function gconstruct:filter/checkcontainer
