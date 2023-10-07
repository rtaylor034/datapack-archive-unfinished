#called from alive players that are inside a zone

execute as @s[scores={zone=1}] at @s run function cmd:player/zones/1/inside
execute as @s[scores={zone=2}] at @s run function cmd:player/zones/2/inside
execute as @s[scores={zone=3}] at @s run function cmd:player/zones/3/inside
execute as @s[scores={zone=4}] at @s run function cmd:player/zones/4/inside
execute as @s[scores={zone=5}] at @s run function cmd:player/zones/5/inside
