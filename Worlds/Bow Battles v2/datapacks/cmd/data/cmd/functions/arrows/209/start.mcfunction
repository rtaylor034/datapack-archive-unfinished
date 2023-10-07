
#DATA
execute as @s[tag=!209bounced] at @s run scoreboard players set @s 209bounce 0
execute as @s[tag=!209bounced] at @s run data merge entity @s {damage:0.5,crit:0b,SoundEvent:"minecraft:block.stone.hit"}
execute as @s[tag=209bounced] at @s run data merge entity @s {crit:1b}
execute as @s[tag=209bounced,scores={209bounce=5}] at @s run data merge entity @s {SoundEvent:"minecraft:entity.arrow.hit"}

#TRACKER (CUSTOM)
summon area_effect_cloud ~ ~ ~ {Tags:["init","tracker"],Duration:9999}
function cmd:tracking/genrandomid
scoreboard players operation @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] randomid = @s randomid
scoreboard players operation @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] trackerid = @s arrowid
scoreboard players operation @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] ownerid = @s ownerid
scoreboard players operation @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] 209bounce = @s 209bounce

execute as @s[tag=red] at @s run tag @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] add red
execute as @s[tag=blue] at @s run tag @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] add blue
execute as @s[tag=ffa] at @s run tag @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] add ffa

tag @e[type=area_effect_cloud] remove init
