
#SCORE
scoreboard players add @s 209bounce 1

#BOUNCE DIRECTION
execute unless block ~.3 ~ ~ #cmd:space run tag @s add 209x
execute unless block ~-.3 ~ ~ #cmd:space run tag @s add 209x
execute unless block ~ ~ ~.3 #cmd:space run tag @s add 209z
execute unless block ~ ~ ~-.3 #cmd:space run tag @s add 209z
execute unless block ~ ~.3 ~ #cmd:space run tag @s add 209y
execute unless block ~ ~-.3 ~ #cmd:space run tag @s add 209y
execute as @s[tag=!209x] as @s[tag=!209y] as @s[tag=!209z] run tag @s add 209x

#ARROW SUMMON
summon arrow ~ ~ ~ {Tags:["209bounced","init"],SoundEvent:"minecraft:block.stone.hit"}

#INIT ARROW
scoreboard players operation @e[type=arrow,tag=init,limit=1,sort=nearest] ownerid = @s ownerid
scoreboard players operation @e[type=arrow,tag=init,limit=1,sort=nearest] arrowid = @s arrowid
scoreboard players operation @e[type=arrow,tag=init,limit=1,sort=nearest] 209bounce = @s 209bounce
execute as @s[tag=red] run tag @e[type=arrow,tag=init,limit=1,sort=nearest] add red
execute as @s[tag=blue] run tag @e[type=arrow,tag=init,limit=1,sort=nearest] add blue
execute as @s[tag=ffa] run tag @e[type=arrow,tag=init,limit=1,sort=nearest] add ffa
data modify entity @e[type=arrow,tag=init,limit=1,sort=nearest] Owner set from entity @s Owner
data modify entity @e[type=arrow,tag=init,limit=1,sort=nearest] Fire set from entity @s Fire

#MOTION
execute store result entity @e[type=arrow,tag=init,limit=1,sort=nearest] Motion[0] double .0000001 run scoreboard players get @s motx
execute store result entity @e[type=arrow,tag=init,limit=1,sort=nearest] Motion[1] double .0000001 run scoreboard players get @s moty
execute store result entity @e[type=arrow,tag=init,limit=1,sort=nearest] Motion[2] double .0000001 run scoreboard players get @s motz

#REFLECT
execute as @s[tag=209x] store result entity @e[type=arrow,tag=init,limit=1,sort=nearest] Motion[0] double -.000000098 run scoreboard players get @s motx
execute as @s[tag=209y] store result entity @e[type=arrow,tag=init,limit=1,sort=nearest] Motion[1] double -.000000095 run scoreboard players get @s moty
execute as @s[tag=209z] store result entity @e[type=arrow,tag=init,limit=1,sort=nearest] Motion[2] double -.000000098 run scoreboard players get @s motz

#MOTION STORE
execute as @e[type=arrow,tag=init,limit=1,sort=nearest] at @s run function cmd:math/storemotion

#DAMAGE
scoreboard players operation @s 209bounce *= 10 integer
execute store result entity @e[type=arrow,tag=init,limit=1,sort=nearest] damage double .1 run scoreboard players operation @s 209bounce += 15 integer

#START
execute as @e[type=arrow,tag=init,limit=1,sort=nearest] at @s run function cmd:arrows/209/start
scoreboard players set @e[type=arrow,tag=init,limit=1,sort=nearest] atime 2

tag @e[type=arrow,tag=init,limit=1,sort=nearest] remove init

#VFX
playsound minecraft:entity.iron_golem.hurt block @a ~ ~ ~ 0.5 2
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.6 10 force
