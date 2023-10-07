
#EFFECT
execute positioned ~ ~-.5 ~ unless entity @e[type=falling_block,tag=gcbmask,distance=0..0.1] run function gconstruct:teleporter/mask


#GUI
execute if entity @a[distance=0..8] run function gconstruct:teleporter/gui
#ACTIVE
execute if data block ~ ~ ~ Items[{Slot:1b}] run function gconstruct:teleporter/active

#HOPPER FIX
execute if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ air destroy
