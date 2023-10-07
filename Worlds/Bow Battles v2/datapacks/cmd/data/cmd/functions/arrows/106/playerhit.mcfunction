
#\called from player hit\
effect clear @s slowness
effect give @s slowness 10 1
playsound entity.slime.squish player @a ~ ~ ~ 1 0
particle item_slime ~ ~1 ~ 0.4 0.5 0.4 1 20

tag @s remove arrowhit




