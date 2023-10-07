#called from alive players

function cmd:player/zones/detect
execute as @s[scores={zone=1..}] at @s run function cmd:player/zones/zonecheck
