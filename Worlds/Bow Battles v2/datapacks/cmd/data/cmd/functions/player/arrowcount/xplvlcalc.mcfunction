
#\calculates the xplvl value and sets this players\

execute store result score @s xplvl run data get entity @s XpLevel

execute unless score @s xplvl = @s arrowcount run tag @s add xplvlcalc
execute as @s[tag=xplvlcalc] store result score @s xplvltar run scoreboard players get @s arrowcount

execute as @s[tag=xplvlcalc] if score @s xplvl > @s arrowcount run xp add @s -1 levels
execute as @s[tag=xplvlcalc] if score @s xplvl < @s arrowcount run xp add @s 1 levels

execute if score @s arrowcount = @s xplvl run tag @s remove xplvlcalc

execute as @s[tag=xplvlcalc] run function cmd:player/arrowcount/xplvlcalc













