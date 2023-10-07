
#CALL - advancement - craft/itemfilter
#DESC - This function called when this player crafts an item filter
#CONTEXT - This player

#base item
summon item ~ ~ ~ {Tags:["init"],Item:{id:"minecraft:slime_ball",Count:1}}

#get item
scoreboard players set getitem.id gcon_param 1
function gconstruct:method/block/getitem/run
data modify entity @e[type=item,tag=init,limit=1,sort=nearest] Item merge from storage gconstruct:out getitem.item

#take book
clear @s minecraft:knowledge_book

#RESETS
advancement revoke @s only gconstruct:craft/itemfilter
recipe take @s gconstruct:crafting/block/itemfilter
tag @e[type=item] remove init
