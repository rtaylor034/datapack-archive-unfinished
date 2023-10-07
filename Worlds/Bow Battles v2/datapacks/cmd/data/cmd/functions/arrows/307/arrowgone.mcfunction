
#called when trackers arrow is gone/hit player

function cmd:tracking/findplayer
tag @a[tag=found] add explodeowner
tag @a remove found

#POSITION CORRECTION
execute positioned ~ ~-1 ~ unless entity @a[tag=arrowhit,limit=1,distance=0..0.7] positioned ~ ~1 ~ facing entity @a[tag=arrowhit,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.7

#EXPLODE
execute at @s run function cmd:actions/block/break
execute at @s run summon creeper ~ 250 ~ {Tags:["307c"],ignited:1,Fuse:0s,ExplosionRadius:2,Invulnerable:1,NoAI:1,Silent:1}
execute at @s run tp @e[type=creeper,tag=307c] ~ ~ ~

#VFX
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 2 1.5

#TAG REMOVE
tag @a[tag=arrowhit,limit=1,sort=nearest] remove arrowhit
