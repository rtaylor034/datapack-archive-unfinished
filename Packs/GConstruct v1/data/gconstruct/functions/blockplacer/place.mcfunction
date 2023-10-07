
#SPAWN
summon area_effect_cloud ~ ~ ~ {Tags:["gcbplacer","gcblock","gcspawning"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:area_effect_cloud,tag=gcspawning,limit=1] at @s run function gconstruct:blockplacer/placerotation
tag @e[type=minecraft:area_effect_cloud] remove gcspawning


#EFFECTS
playsound block.stone.place block @a ~ ~ ~ 0.7 0.8
