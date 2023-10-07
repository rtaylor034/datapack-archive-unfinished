
#\takes the rotation data of this player and converts to motion data\
#\IN - this players rotation\
#\OUT - (math -> rtm<xyz>)\
#\IMPORTANT - Remember to scale the score down (Defualt is .000001)\
#

tag @s add mathrtt

#POSITION STORE
#\6 zeros\
execute store result score @s posx run data get entity @s Pos[0] 1000000
execute store result score @s posy run data get entity @s Pos[1] 1000000
execute store result score @s posz run data get entity @s Pos[2] 1000000

#TRACKING ENTITY
summon area_effect_cloud ^ ^ ^1 {Duration:1,Tags:["mathrttp"]}
execute as @e[tag=mathrttp,limit=1,sort=nearest] at @s store result score @a[tag=mathrtt,limit=1,sort=nearest] posx2 run data get entity @s Pos[0] 1000000
execute as @e[tag=mathrttp,limit=1,sort=nearest] at @s store result score @a[tag=mathrtt,limit=1,sort=nearest] posy2 run data get entity @s Pos[1] 1000000
execute as @e[tag=mathrttp,limit=1,sort=nearest] at @s store result score @a[tag=mathrtt,limit=1,sort=nearest] posz2 run data get entity @s Pos[2] 1000000

#POSITION SUBTRACTION
scoreboard players operation @s posx2 -= @s posx
scoreboard players operation @s posy2 -= @s posy
scoreboard players operation @s posz2 -= @s posz


#MOTION STORAGE
scoreboard players operation math rtmx = @s posx2
scoreboard players operation math rtmy = @s posy2
scoreboard players operation math rtmz = @s posz2

#END
tag @s remove mathrtt
kill @e[tag=mathrttp,limit=1,sort=nearest]



