#Called every tick when player is within 15 blocks

#EFFECT
execute positioned ~ ~-.5 ~ unless entity @e[type=falling_block,tag=gcbmask,distance=0..0.1] run function gconstruct:filter/mask

#GUI
execute if entity @a[distance=0..8] run function gconstruct:filter/gui

#HOPPER FIX
execute if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ air destroy
