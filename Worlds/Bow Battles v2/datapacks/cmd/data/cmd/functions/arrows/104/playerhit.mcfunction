
#\called from player hit\

effect give @s speed 15 1
effect give @s jump_boost 15 1
playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 2
particle effect ~ ~1 ~ 0.4 0.5 0.4 1 20

tag @s remove arrowhit
