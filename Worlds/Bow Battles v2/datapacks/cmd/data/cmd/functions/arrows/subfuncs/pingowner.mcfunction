
function cmd:tracking/findplayer
execute as @a[tag=found,limit=1] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.7 0.8
tag @a remove found
