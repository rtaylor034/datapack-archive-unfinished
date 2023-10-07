
#IMPACT
function cmd:tracking/findplayer
scoreboard players add @a[tag=found,limit=1] arrowcount 3
execute as @a[tag=found,limit=1] if score @s arrowcount > @s maxarrows run scoreboard players operation @s arrowcount = @s maxarrows
execute as @a[tag=found,limit=1] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1.1
execute as @a[tag=found,limit=1] at @s run function cmd:player/arrowcount/displayupdate
tag @a remove found

function cmd:tracking/killtracker
kill @s
