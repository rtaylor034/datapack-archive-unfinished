

#PLAYER HIT
execute as @s[tag=arrowgone,scores={209bounce=1..}] at @s as @a[tag=arrowhit,limit=1,sort=nearest] at @s run function cmd:arrows/209/playerhitbounce
execute as @s[tag=arrowgone,scores={209bounce=..0}] at @s as @a[tag=arrowhit,limit=1,sort=nearest] at @s run function cmd:arrows/209/playerhitnobounce
