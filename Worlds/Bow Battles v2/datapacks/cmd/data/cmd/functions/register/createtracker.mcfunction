
#\summons a tracker with a randomid and trackerid matching the arrow that called this function\

#\call from arrow on start function if it needs a tracker\

summon area_effect_cloud ~ ~ ~ {Tags:["init","tracker"],Duration:9999}
function cmd:tracking/genrandomid
scoreboard players operation @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] randomid = @s randomid
scoreboard players operation @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] trackerid = @s arrowid
scoreboard players operation @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] ownerid = @s ownerid

execute as @s[tag=red] at @s run tag @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] add red
execute as @s[tag=blue] at @s run tag @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] add blue
execute as @s[tag=ffa] at @s run tag @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] add ffa



tag @e[type=area_effect_cloud] remove init