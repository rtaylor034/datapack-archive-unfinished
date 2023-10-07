
#CALL - blocks/main
#DESC - Called whenever a player is within 5 blocks and there are no block mask entities already spawned, displays block mask
#CONTEXT - This Entity

#BLOCKS

#Item filter
execute if score @s gcon_blockid matches 1 at @s run function gconstruct:blocks/itemfilter/mask
