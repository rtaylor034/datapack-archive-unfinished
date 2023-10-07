
#IMPACT

#VFX
playsound minecraft:block.piston.contract block @a ~ ~ ~ 0.7 1.5


#CHILD

#FIND
tag @s add csearch
execute as @e[type=area_effect_cloud,tag=308c] at @s if score @s randomid = @e[tag=csearch,limit=1] randomid run tag @s add cfound
tag @s remove csearch

#BRIDGE
#range of bridge divided by 2 (times raycast travels 0.5 blocks)
scoreboard players set #308brange local 20
scoreboard players set #308range local 200
tag @s add 308target

function cmd:tracking/findplayer
execute as @e[type=minecraft:area_effect_cloud,tag=cfound] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 0.7 1.5
execute as @e[type=minecraft:area_effect_cloud,tag=cfound] at @s facing entity @e[type=arrow,tag=308target,limit=1,sort=nearest] feet run function cmd:arrows/308/bridge
tag @a remove found

#END
kill @e[type=minecraft:area_effect_cloud,tag=cfound]
kill @s
