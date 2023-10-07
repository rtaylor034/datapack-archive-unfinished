
effect clear @s
effect give @s minecraft:weakness 15 255 false
effect give @s minecraft:mining_fatigue 15 255 false
effect give @s minecraft:slowness 15 0 false

scoreboard players set @s xphealth_deathtimer 0
tag @s remove xphealth-dying

#VFX
playsound entity.allay.death master @a ~ ~ ~ 1 2
playsound entity.allay.death master @a ~ ~ ~ 1 1.8
particle minecraft:firework ~ ~1 ~ 0.3 0.4 0.3 0.2 20 force
