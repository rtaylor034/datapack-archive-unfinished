
#\called from player hit\

effect give @s instant_health 1 0 true
effect give @s regeneration 3 2 true

particle heart ~ ~1 ~ 0.4 0.5 0.4 0.2 10 force
particle happy_villager ~ ~1 ~ 0.4 0.5 0.4 0.2 10 force
playsound entity.player.levelup player @a ~ ~ ~ 0.8 2

tag @s remove arrowhit




