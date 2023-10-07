
#CALL - blocks/main
#DESC - called every tick from all itemfilters (marker tagged "gcon-block" with (@s -> gcon_blockid = 1))
#CONTEXT - This Entity

#BLOCK ID - 1

#PLACE
execute as @s[tag=gcon-block-place] run function gconstruct:blocks/itemfilter/place

#FILTER
execute if data storage gconstruct:var block.items[{Slot:4b}] run function gconstruct:blocks/itemfilter/filter/check

#DISABLE REDSTONE SIGNAL
execute if block ~ ~ ~ minecraft:dropper[triggered=false] run setblock ~ ~ ~ minecraft:dropper[facing=down,triggered=true]{CustomName:'{"text":"Item Filter"}'}
