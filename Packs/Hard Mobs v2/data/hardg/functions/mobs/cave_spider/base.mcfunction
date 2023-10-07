
#SPAWN ATTRIBUTE SET
execute as @s[tag=!hardg-spawned] run function hardg:mobs/cave_spider/spawn

#DEATH
execute as @s[scores={hardg_health=..0}] run function hardg:mobs/cave_spider/death
