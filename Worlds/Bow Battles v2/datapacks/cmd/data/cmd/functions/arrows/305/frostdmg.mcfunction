
#\called from player hit on frost\

#FROST DAMAGE
effect give @s minecraft:instant_damage 1 0 true

#VFX
particle minecraft:block ice ~ ~1 ~ 0.2 0.4 0.2 1 30 force
particle minecraft:item ice ~ ~1 ~ 0.2 0.4 0.2 0.2 20 force
playsound minecraft:block.glass.break block @a ~ ~ ~ 0.6 0.8
playsound minecraft:block.glass.break block @a ~ ~ ~ 0.9 1.2
