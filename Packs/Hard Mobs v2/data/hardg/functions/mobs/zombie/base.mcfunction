
#hurt
execute as @s[tag=_hardg-hurt] run function hardg:mobs/zombie/hurt


#rage
execute as @s[tag=hardg-zombie-rage] at @s run function hardg:mobs/zombie/rage

#SPAWN ATTRIBUTE SET
execute as @s[tag=!hardg-spawned] run function hardg:mobs/zombie/spawn
