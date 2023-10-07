
#\calculates the xpbar value and sets this players\

execute store result score @s xpperc run data get entity @s XpP 62

execute unless score @s xpperc = @s arrowperc run tag @s add xpbarcalc

execute as @s[tag=xpbarcalc] run xp set @s 20 levels

execute as @s[tag=xpbarcalc] if score @s xpperc > @s arrowperc run xp add @s -1 points
execute as @s[tag=xpbarcalc] if score @s xpperc < @s arrowperc run xp add @s 1 points

execute store result score @s xpdiff run scoreboard players operation @s xpperc -= @s arrowperc

execute as @s[scores={xpdiff=-1..1}] run tag @s remove xpbarcalc


execute as @s[tag=xpbarcalc] run function cmd:player/arrowcount/xpbarcalc
















