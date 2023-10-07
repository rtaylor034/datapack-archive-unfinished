
#\gives an arrow to this player\

scoreboard players add @s arrowcount 1
playsound entity.item.pickup player @s ~ ~ ~ 0.2 1.8
scoreboard players set @s arrowtimer 0
function cmd:player/arrowcount/displayupdate







