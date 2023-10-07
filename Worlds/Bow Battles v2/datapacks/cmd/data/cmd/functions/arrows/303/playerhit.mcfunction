
#\called from player hit\

effect give @s minecraft:slowness 3 1 true
effect give @s minecraft:jump_boost 3 254 true
scoreboard players set @s bowcooldown 60

particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.5 30 force
playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 2
tag @s remove arrowhit
