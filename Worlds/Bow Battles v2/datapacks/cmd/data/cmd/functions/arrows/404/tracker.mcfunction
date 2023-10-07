
#OWNER NOTIF
function cmd:tracking/findplayer
execute as @s[tag=arrowgone] at @s if entity @a[tag=arrowhit,limit=1,sort=nearest,scores={health=9..}] as @a[tag=found,limit=1] at @s run playsound entity.creeper.hurt player @s ~ ~ ~ 0.9 2
execute as @s[tag=arrowgone] at @s if entity @a[tag=arrowhit,limit=1,sort=nearest,scores={health=..8}] as @a[tag=found,limit=1] at @s run function cmd:arrows/404/killnotif
tag @a remove found

#PLAYER HIT
execute as @s[tag=arrowgone] at @s as @a[tag=arrowhit,limit=1,sort=nearest] at @s run function cmd:arrows/404/playerhit
