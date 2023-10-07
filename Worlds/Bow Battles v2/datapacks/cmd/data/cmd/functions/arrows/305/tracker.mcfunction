

#PLAYER HIT
execute as @s[tag=arrowgone] at @s if entity @a[tag=arrowhit,limit=1,sort=nearest,scores={305frost=1..}] run function cmd:arrows/305/playerhitnotif
execute as @s[tag=arrowgone] at @s as @a[tag=arrowhit,limit=1,sort=nearest] at @s run function cmd:arrows/305/playerhit
