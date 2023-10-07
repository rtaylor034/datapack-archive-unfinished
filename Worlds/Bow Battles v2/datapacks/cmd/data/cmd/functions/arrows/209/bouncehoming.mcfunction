
#NOTE - Not updated for proper teams

#SCORE
scoreboard players add @s 209bounce 1

#BOUNCE CHECK
execute as @s[tag=red] facing entity @a[team=blue,limit=1,sort=nearest,scores={playerstate=1}] eyes unless block ^ ^ ^.3 #cmd:space run tag @s add 209nobounce
execute as @s[tag=blue] facing entity @a[team=red,limit=1,sort=nearest,scores={playerstate=1}] eyes unless block ^ ^ ^.3 #cmd:space run tag @s add 209nobounce

#MOTION
execute as @s[tag=!209nobounce,tag=red] facing entity @a[team=blue,limit=1,sort=nearest,scores={playerstate=1}] eyes run function cmd:math/rotationtomotionany
execute as @s[tag=!209nobounce,tag=blue] facing entity @a[team=red,limit=1,sort=nearest,scores={playerstate=1}] eyes run function cmd:math/rotationtomotionany

#ARROW SUMMON
execute as @s[tag=!209nobounce,tag=blue] facing entity @a[team=red,limit=1,sort=nearest,scores={playerstate=1}] eyes run summon arrow ^ ^ ^.3 {Tags:["209bounced","init"],NoGravity:1b}
execute as @s[tag=!209nobounce,tag=red] facing entity @a[team=blue,limit=1,sort=nearest,scores={playerstate=1}] eyes run summon arrow ^ ^ ^.3 {Tags:["209bounced","init"],NoGravity:1b}

#INIT ARROW
scoreboard players operation @e[type=arrow,tag=init,limit=1,sort=nearest] ownerid = @s ownerid
scoreboard players operation @e[type=arrow,tag=init,limit=1,sort=nearest] arrowid = @s arrowid
scoreboard players operation @e[type=arrow,tag=init,limit=1,sort=nearest] 209bounce = @s 209bounce
execute as @s[tag=!209nobounce,tag=red] run tag @e[type=arrow,tag=init,limit=1,sort=nearest] add red
execute as @s[tag=!209nobounce,tag=blue] run tag @e[type=arrow,tag=init,limit=1,sort=nearest] add blue
execute as @s[tag=!209nobounce,tag=ffa] run tag @e[type=arrow,tag=init,limit=1,sort=nearest] add ffa
data modify entity @e[type=arrow,tag=init,limit=1,sort=nearest] Owner set from entity @s Owner

#MOTION
execute store result entity @e[type=arrow,tag=init,limit=1,sort=nearest] Motion[0] double .000002 run scoreboard players get math rtmx
execute store result entity @e[type=arrow,tag=init,limit=1,sort=nearest] Motion[1] double .000002 run scoreboard players get math rtmy
execute store result entity @e[type=arrow,tag=init,limit=1,sort=nearest] Motion[2] double .000002 run scoreboard players get math rtmz

tag @e[type=arrow,tag=init,limit=1,sort=nearest] remove init

#EFFECTS
playsound minecraft:entity.iron_golem.hurt block @a ~ ~ ~ 0.5 2
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.8 10 force
