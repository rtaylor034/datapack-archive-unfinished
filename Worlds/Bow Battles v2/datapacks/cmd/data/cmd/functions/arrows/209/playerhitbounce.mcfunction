
#\called from player hit\

particle crit ~ ~1 ~ 0.2 0.4 0.2 0.8 20 force
playsound minecraft:entity.iron_golem.hurt block @a ~ ~ ~ 0.8 1.5
tag @s remove arrowhit
