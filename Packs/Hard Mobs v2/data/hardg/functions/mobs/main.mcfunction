
#HURT
execute as @s[nbt={HurtTime:10s}] run function hardg:mobs/calchealth
execute as @s[nbt={HurtTime:9s}] run function hardg:mobs/calchealth



#MOBS
execute as @s[type=minecraft:zombie] run function hardg:mobs/zombie/base
execute as @s[type=minecraft:skeleton] run function hardg:mobs/skeleton/base
execute as @s[type=minecraft:cave_spider] run function hardg:mobs/cave_spider/base
execute as @s[type=minecraft:spider] run function hardg:mobs/spider/base
execute as @s[type=minecraft:creeper] run function hardg:mobs/creeper/base



#SPAWN ATTRIBUTES
execute as @s[tag=!hardg-spawned] run function hardg:spawn/run

#TAG RESET
tag @s remove _hardg-hurt

#DEATH
execute as @s[scores={hardg_health=..0}] run function hardg:mobs/ondeath
