
#IMPORTANT - ONLY USE THIS WHEN BEING USED ON ENTITIES THAT ARENT PLAYERS

#\takes the rotation data of this entity and converts to motion data\
#\IN - this players rotation\
#\OUT - (math -> rtm<xyz>)\
#\IMPORTANT - Remember to scale the score down (Defualt is .000001)\

#\example store\
#execute store result entity @s Motion[0] double .000001 run scoreboard players get math rtmx

tag @s add mathrtt

#POSITION STORE
#\6 zeros\
execute store result score @s posx run data get entity @s Pos[0] 1000000
execute store result score @s posy run data get entity @s Pos[1] 1000000
execute store result score @s posz run data get entity @s Pos[2] 1000000

#TRACKING ENTITY
summon area_effect_cloud ^ ^ ^1 {Duration:1,Tags:["mathrttp"]}
execute as @e[type=area_effect_cloud,tag=mathrttp,limit=1,sort=nearest] at @s store result score @e[tag=mathrtt,limit=1,sort=nearest] posx2 run data get entity @s Pos[0] 1000000
execute as @e[type=area_effect_cloud,tag=mathrttp,limit=1,sort=nearest] at @s store result score @e[tag=mathrtt,limit=1,sort=nearest] posy2 run data get entity @s Pos[1] 1000000
execute as @e[type=area_effect_cloud,tag=mathrttp,limit=1,sort=nearest] at @s store result score @e[tag=mathrtt,limit=1,sort=nearest] posz2 run data get entity @s Pos[2] 1000000

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
