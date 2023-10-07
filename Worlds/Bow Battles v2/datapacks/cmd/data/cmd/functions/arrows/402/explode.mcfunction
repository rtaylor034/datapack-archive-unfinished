
#EXPLODE
summon creeper ~ ~ ~ {Invulnerable:1,ExplosionRadius:0,Silent:1,Tags:["402c"],ignited:1,Fuse:0s}
function cmd:actions/block/break

#POWER SET
execute store result entity @e[type=creeper,limit=1,sort=nearest,tag=402c] ExplosionRadius int 1 run scoreboard players get @s gtimer2


#OWNER SET
function cmd:tracking/findplayer
tag @a[tag=found] add explodeowner
tag @a remove found

#EFFECTS
execute as @s[scores={gtimer2=5..}] at @s run particle explosion_emitter ~ ~ ~ 0.5 0.5 0.5 1 3 force
execute as @s[scores={gtimer2=6..}] at @s run particle large_smoke ~ ~ ~ 0.5 0.5 0.5 0.4 80 force
execute as @s[scores={gtimer2=7..}] at @s run particle poof ~ ~ ~ 0.5 0.5 0.5 0.3 100 force
execute as @s[scores={gtimer2=9..}] at @s run particle explosion_emitter ~ ~ ~ 2 2 2 1 8 force
execute as @s[scores={gtimer2=9..}] at @s run particle lava ~ ~ ~ 2 0.5 2 1 50 force

kill @s

