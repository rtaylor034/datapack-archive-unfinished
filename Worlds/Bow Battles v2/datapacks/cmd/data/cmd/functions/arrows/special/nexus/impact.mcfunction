
#IMPACT

#NEXUS HIT CHECK
execute as @s[tag=red,nbt={inBlockState:{Name:"minecraft:blue_stained_glass"}}] run execute as @e[type=minecraft:area_effect_cloud,tag=bluenexus,limit=1,sort=nearest] run function cmd:game/standard/nexus/hit
execute as @s[tag=blue,nbt={inBlockState:{Name:"minecraft:red_stained_glass"}}] run execute as @e[type=minecraft:area_effect_cloud,tag=rednexus,limit=1,sort=nearest] run function cmd:game/standard/nexus/hit



function cmd:tracking/killtracker
kill @s

#TIMER END
function cmd:game/standard/nexusbow/activetimer/end
