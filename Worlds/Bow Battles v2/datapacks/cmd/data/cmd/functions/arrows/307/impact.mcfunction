
#IMPACT

#EXPLODE
function cmd:actions/block/break
summon creeper ~ 250 ~ {Tags:["307c"],ignited:1,Fuse:0s,ExplosionRadius:2,Invulnerable:1,NoAI:1,Silent:1}
tp @e[type=creeper,tag=307c] @s

#VFX
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 2 1.5

#EXPLOSION OWNER
function cmd:tracking/findplayer
tag @a[tag=found] add explodeowner
tag @a remove found

#END
function cmd:tracking/killtracker
kill @s
