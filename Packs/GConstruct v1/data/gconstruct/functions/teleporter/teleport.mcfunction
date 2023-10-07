
#called when linked teleporter is found

#NEAREST
tag @e[type=area_effect_cloud,tag=gctpfound,sort=nearest,limit=1] add gctptarget
#TELEPORT

execute as @e[type=area_effect_cloud,tag=gctptarget] at @s run tp @a[tag=gctpplayer] ~ ~.5 ~
execute as @a[tag=gctpplayer] at @s run function gconstruct:teleporter/tpeffect

#TAG
tag @e[type=area_effect_cloud] remove gctptarget
