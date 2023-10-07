

#PLAYER HIT
execute as @s[tag=arrowgone] at @s run function cmd:arrows/204/createchild

effect give @a[tag=arrowhit,limit=1,sort=nearest] speed 2 0 true

tag @a[tag=arrowhit,limit=1,sort=nearest] remove arrowhit

