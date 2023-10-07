
gamerule doTileDrops false
spreadplayers ~ ~ 0 80 false @e[type=minecraft:area_effect_cloud,tag=helper]
execute as @e[type=minecraft:area_effect_cloud,tag=helper] at @s run summon minecraft:creeper ~ ~ ~ {Silent:1,ignited:1,Fuse:0s,ExplosionRadius:3}
