

#PLAYER HIT
execute as @a[tag=arrowhit,limit=1,sort=nearest] at @s run function cmd:arrows/211/playerhit

#NOTIF
function cmd:tracking/findplayer
execute as @a[tag=found,limit=1] at @s run function cmd:arrows/211/givearrows

tag @a remove found
