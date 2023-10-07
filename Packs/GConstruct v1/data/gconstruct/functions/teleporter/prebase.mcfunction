
#BASE
execute if entity @a[distance=0..15] run function gconstruct:teleporter/base

#ACTIVE
execute if data block ~ ~ ~ Items[{Slot:1b}] run forceload add ~ ~

#BREAK
execute unless block ~ ~ ~ dropper[facing=up] run function gconstruct:teleporter/break

#HOPPER FIX
execute positioned ~ ~-1 ~ as @e[type=minecraft:hopper_minecart,distance=0..2] run data merge entity @s {Enabled:0b}
