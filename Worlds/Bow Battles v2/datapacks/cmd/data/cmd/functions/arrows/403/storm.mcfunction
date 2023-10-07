
#SCORES
scoreboard players add @s gtimer 1

#STORM
summon area_effect_cloud ~ ~ ~ {Tags:["403c2"],Duration:1}
spreadplayers ~ ~ 1 7 false @e[type=area_effect_cloud,tag=403c2,limit=1,sort=nearest]
execute at @e[type=area_effect_cloud,tag=403c2,limit=1,sort=nearest] positioned ~ ~30 ~ run function cmd:arrows/403/summonarrow
kill @e[type=area_effect_cloud,tag=403c2,limit=1,sort=nearest]

summon area_effect_cloud ~ ~ ~ {Tags:["403c2"],Duration:1}
spreadplayers ~ ~ 1 10 false @e[type=area_effect_cloud,tag=403c2,limit=1,sort=nearest]
execute at @e[type=area_effect_cloud,tag=403c2,limit=1,sort=nearest] positioned ~ ~30 ~ run function cmd:arrows/403/summonarrow
kill @e[type=area_effect_cloud,tag=403c2,limit=1,sort=nearest]

#KILL
kill @s[scores={gtimer=200..}]



