

#PLAYER HIT
execute as @a[tag=arrowhit,limit=1,sort=nearest] at @s run function cmd:arrows/306/playerhit

#NOTIF
function cmd:tracking/findplayer
execute as @a[tag=found,limit=1] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.65
tag @a remove found

function cmd:arrows/subfuncs/pingowner
