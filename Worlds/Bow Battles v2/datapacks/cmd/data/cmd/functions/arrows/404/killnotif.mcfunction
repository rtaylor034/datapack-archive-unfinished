
#called from arrow owner when successful kill

#VFX
playsound entity.ender_dragon.growl player @s ~ ~ ~ 0.5 2

#ARROW REFUND
scoreboard players add @s arrowcount 5
execute if score @s arrowcount > @s maxarrows run scoreboard players operation @s arrowcount = @s maxarrows
function cmd:player/arrowcount/displayupdate
