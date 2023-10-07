
#\called from player with frost every tick\

#VFX
particle minecraft:dust -.2 -.2 -.01 1.1 ~ ~1 ~ 0.3 0.5 0.3 1 2 force
particle minecraft:dust -.4 -.4 -.05 0.7 ~ ~1 ~ 0.3 0.5 0.3 1 3 force
playsound minecraft:block.snow.step block @a ~ ~ ~ 0.3 0


#SCORE
scoreboard players remove @s 305frost 1
