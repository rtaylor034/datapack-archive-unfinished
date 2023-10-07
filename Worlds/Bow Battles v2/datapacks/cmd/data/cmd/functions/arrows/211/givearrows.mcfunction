
#Called when player is hit from arrow owner

#ARROWS
scoreboard players add @s arrowcount 4
execute if score @s arrowcount > @s maxarrows run scoreboard players operation @s arrowcount = @s maxarrows
function cmd:player/arrowcount/displayupdate
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1.1
playsound minecraft:item.armor.equip_gold voice @a ~ ~ ~ 0.7 1.3
