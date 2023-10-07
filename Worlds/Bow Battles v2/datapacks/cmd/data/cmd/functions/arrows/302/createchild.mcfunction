
#\called from player shooting in initcaction\

summon area_effect_cloud ~ ~ ~ {Tags:["projectile","302c"],Duration:10}


#INIT
scoreboard players operation @e[type=area_effect_cloud,tag=302c,limit=1,sort=nearest] ownerid = @s playerid
execute as @s[team=red] run tag @e[type=area_effect_cloud,tag=302c,limit=1,sort=nearest] add red
execute as @s[team=blue] run tag @e[type=area_effect_cloud,tag=302c,limit=1,sort=nearest] add blue
execute as @s[team=ffa] run tag @e[type=area_effect_cloud,tag=302c,limit=1,sort=nearest] add ffa

#TP ROTATION
tp @e[type=area_effect_cloud,tag=302c,limit=1,sort=nearest] @s
execute anchored eyes positioned ^ ^ ^1 run tp @e[type=area_effect_cloud,tag=302c,limit=1,sort=nearest] ^ ^ ^

#SNEAKING
execute as @s[scores={sneak=..0}] at @s run tag @e[type=area_effect_cloud,tag=302c,limit=1,sort=nearest] add hipfire

#FUNCTION
execute as @e[type=area_effect_cloud,tag=302c,limit=1,sort=nearest] at @s run function cmd:arrows/302/shoot
