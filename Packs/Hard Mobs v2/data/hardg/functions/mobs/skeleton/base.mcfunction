
#HURT
execute as @s[tag=_hardg-hurt] run function hardg:mobs/skeleton/hurt

#SPAWN ATTRIBUTE SET
execute as @s[tag=!hardg-spawned] run function hardg:mobs/skeleton/spawn

#SHOOT
execute anchored eyes positioned ^ ^ ^.1 if entity @e[type=arrow,distance=0..0.3,nbt=!{HasBeenShot:1b}] run function hardg:mobs/skeleton/shoot
