
#PLAYER ROTATION
execute as @a[scores={shoot=1..},limit=1,sort=nearest] at @s run function cmd:math/rotationtomotion

#MOTION STORAGE
execute store result entity @s Motion[0] double .000003 run scoreboard players get math rtmx
execute store result entity @s Motion[1] double .000003 run scoreboard players get math rtmy
execute store result entity @s Motion[2] double .000003 run scoreboard players get math rtmz

#SOUND
stopsound @a[scores={shoot=1..},limit=1,sort=nearest] * entity.arrow.shoot
