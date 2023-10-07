

#NOTIF
function cmd:tracking/findplayer
execute as @a[tag=found] at @s run playsound block.glass.break player @s ~ ~ ~ 1 1.3
tag @a remove found
