

#PLAYER HIT
execute as @s[tag=arrowgone] at @s as @a[tag=arrowhit,limit=1,sort=nearest] at @s run function cmd:arrows/104/playerhit
execute as @s[tag=arrowgone] at @s run function cmd:arrows/subfuncs/pingowner
