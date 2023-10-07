
summon creeper ~ ~ ~ {Invulnerable:1,ExplosionRadius:5,Silent:1,Tags:["301c2"],ignited:1,Fuse:0s}
function cmd:actions/block/break

#OWNER SET
function cmd:tracking/findplayer
tag @a[tag=found] add explodeowner
tag @a remove found



kill @s
