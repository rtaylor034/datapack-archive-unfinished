
#CALL - blocks/break
#DESC - Called from all items that drop when a block is broken, checks if this item matches with the break item.
#CONTEXT - This Entity(s)

data modify storage gconstruct:var break.find set from entity @s Item
execute store success score break.match gcon_var run data modify storage gconstruct:var break.find merge from storage gconstruct:var break.item
execute if score break.match gcon_var matches 0 run tag @s add gcon-breakitem
