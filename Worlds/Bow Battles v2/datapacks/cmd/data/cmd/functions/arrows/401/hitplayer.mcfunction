
#\called when player hit\

#PRE
tag @a[tag=arrowhit,limit=1,sort=nearest] add target
function cmd:tracking/findplayer

#POS MARKERS
execute as @a[tag=target] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["tp1"]}
execute as @a[tag=found] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["tp2"]}

#ROTATIONS
data modify entity @e[type=area_effect_cloud,tag=tp1,limit=1] Rotation set from entity @a[tag=found,limit=1] Rotation
data modify entity @e[type=area_effect_cloud,tag=tp2,limit=1] Rotation set from entity @a[tag=target,limit=1] Rotation

#TPS
tp @a[tag=found,limit=1] @e[type=area_effect_cloud,limit=1,tag=tp1]
tp @a[tag=target,limit=1] @e[type=area_effect_cloud,limit=1,tag=tp2]

#EFFECTS
execute as @a[tag=found,limit=1] at @s run function cmd:arrows/401/tpeffect
execute as @a[tag=target,limit=1] at @s run function cmd:arrows/401/tpeffect


#REMOVES
kill @e[type=area_effect_cloud,tag=tp2,limit=1]
kill @e[type=area_effect_cloud,tag=tp1,limit=1]
tag @a remove found
tag @a remove target
tag @a remove arrowhit




