
#BREAK
execute unless block ~ ~ ~ dropper[facing=up] run function gconstruct:sies/break
execute if entity @a[distance=0..15] run function gconstruct:sies/base

#HOPPER FIX
execute positioned ~ ~-1 ~ as @e[type=minecraft:hopper_minecart,distance=0..2] run data merge entity @s {Enabled:0b}
