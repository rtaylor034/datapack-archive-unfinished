
#\standard function for initializing a child\

#\call AFTER summoning child entity with tag "init"\

#\NOTE - Can also be used generically\

#INIT
scoreboard players operation @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] ownerid = @s ownerid
scoreboard players operation @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] randomid = @s randomid
execute as @s[tag=red] run tag @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] add red
execute as @s[tag=blue] run tag @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] add blue
execute as @s[tag=ffa] run tag @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] add ffa

tag @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] remove init
