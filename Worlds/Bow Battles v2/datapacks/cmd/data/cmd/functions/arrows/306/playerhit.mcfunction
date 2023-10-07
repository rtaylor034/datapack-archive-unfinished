
#\called from player hit\

scoreboard players add @s arrowcount 3
execute if score @s arrowcount > @s maxarrows run scoreboard players operation @s arrowcount = @s maxarrows
function cmd:player/arrowcount/displayupdate
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.9

tag @s remove arrowhit
