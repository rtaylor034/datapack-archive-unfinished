
effect clear @s minecraft:night_vision
effect give @s hunger 5 255 true
effect give @s slowness 5 0 true
effect give @s minecraft:night_vision 5 1 true
tag @s add xphealth-dying

execute store result score @s xphealth_deathtimer run data get storage xphealth:controls deathSeconds 20
execute store result score @s xphealth_timer run data get storage xphealth:controls updateInterval
#VFX
playsound entity.allay.death master @a ~ ~ ~ 2 0
playsound entity.allay.death master @s ~ ~ ~ 1 0.7
particle minecraft:soul ~ ~1 ~ 0.2 0.4 0.2 0.1 40


#RESETS
