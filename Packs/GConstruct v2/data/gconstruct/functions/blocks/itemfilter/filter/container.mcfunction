
#CALL - blocks/itemfilter/filter/check
#DESC - called if the item filter has a container above it with new item data
#CONTEXT - this



#cycleto
data remove storage slime:param cycleto
data modify storage slime:param cycleto.array set from entity @s data.filter.container.items
data modify storage slime:param cycleto.tag.id set from entity @s data.filter.item.id
function slime:array/cycleto/run
data modify block ~ ~1 ~ Items set from storage slime:out cycleto.out
execute if score cycleto.success slime_out matches 1.. run function gconstruct:blocks/itemfilter/filter/dispense/container


#RESETS
data remove storage gconstruct:var container
