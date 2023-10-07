
#SIGN
execute as @e[type=area_effect_cloud,tag=gcsignmark] at @s run setblock ~ ~ ~ bedrock
execute as @e[type=area_effect_cloud,tag=gcsignmark] at @s run forceload remove ~ ~
kill @e[type=area_effect_cloud,tag=gcsignmark]
execute as @e[type=!area_effect_cloud,sort=nearest,limit=1] at @s run fill ~1 1 ~1 ~-1 2 ~-1 bedrock
execute as @e[type=!area_effect_cloud,sort=nearest,limit=1] at @s run setblock ~ 1 ~ oak_sign
execute as @e[type=!area_effect_cloud,sort=nearest,limit=1] at @s run summon area_effect_cloud ~ 1 ~ {Tags:["gcsignmark"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=!area_effect_cloud,sort=nearest,limit=1] at @s run forceload add ~ ~
