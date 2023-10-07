
#called every tick

#ACTIVE
execute if data block ~ ~ ~ Items[{Slot:4b}] run function gconstruct:filter/activecheck

#BASE
execute if entity @a[distance=0..15] run function gconstruct:filter/base

#HOPPER FIX
execute positioned ~ ~-1 ~ as @e[type=minecraft:hopper_minecart,distance=0..2] run data merge entity @s {Enabled:0b}

#BREAK
execute unless block ~ ~ ~ dropper run function gconstruct:filter/break
