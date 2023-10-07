
#\called from player hit\

#FROST DAMAGE
execute as @s[scores={305frost=1..}] run function cmd:arrows/305/frostdmg



#FROST  APPLY
scoreboard players set @s 305frost 60
effect give @s slowness 3 3 true
effect give @s minecraft:jump_boost 3 250 true



tag @s remove arrowhit
