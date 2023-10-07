
#\called from player hit\

scoreboard players remove @s arrowcount 4
execute if score @s arrowcount matches ..-1 run scoreboard players set @s arrowcount 0
function cmd:player/arrowcount/displayupdate
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.65

#VFX
particle item arrow ~ ~1 ~ 0.3 0.3 0.3 0.4 40 force
particle enchanted_hit ~ ~1 ~ 0.3 0.3 0.3 1 30 force
playsound minecraft:item.armor.equip_leather voice @a ~ ~ ~ 0.7 0.8

tag @s remove arrowhit
