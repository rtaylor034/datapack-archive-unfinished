




scoreboard players remove @s[scores={xphealth_deathtimer=0..}] xphealth_deathtimer 1
execute as @s[scores={xphealth_deathtimer=0}] run function xphealth:player/death/die


#VFX
particle minecraft:soul ~ ~1 ~ 0.2 0.4 0.2 0.04 1
particle smoke ~ ~ ~ 5 5 5 0 10 force @s
particle large_smoke ~ ~ ~ 5 5 5 0 2 force @s
execute at @e[type=experience_orb,distance=0..30] run particle minecraft:enchant ~ ~.1 ~ 0 0 0 3 4 force
execute at @e[type=experience_orb,distance=0..30] run particle minecraft:reverse_portal ~ ~.1 ~ 0 0 0 2 1 force
