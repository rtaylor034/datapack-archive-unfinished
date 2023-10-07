
#\called from player hit\

execute as @s[scores={health=..8}] at @s run function cmd:arrows/404/death
execute as @s[scores={health=9..}] at @s run function cmd:arrows/404/nodeath

tag @s remove arrowhit
