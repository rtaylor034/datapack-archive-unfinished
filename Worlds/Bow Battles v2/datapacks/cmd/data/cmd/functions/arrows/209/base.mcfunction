
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/209/start
#EFFECT
function cmd:tracking/findplayer
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 2 force @a[tag=found]
tag @a remove found

#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/209/impact

#MOTION STORAGE
function cmd:math/storemotion
