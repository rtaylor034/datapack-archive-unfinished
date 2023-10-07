
#called every tick from nexus bow item (tagged with "nbitem")

#STAY IN MIDDLE
execute as @s[tag=nboriginal] at @s unless entity @e[type=minecraft:area_effect_cloud,tag=nbspawn,distance=0..0.5] run tp @s @e[type=area_effect_cloud,tag=nbspawn,limit=1,sort=nearest]
