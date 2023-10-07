
#\called every tick from a random location in storm\

#ARROW
summon arrow ~ ~ ~ {SoundEvent:"minecraft:weather.rain",Tags:["403c3","init","childarrow"],Motion:[0.0,-3.0,0.0],crit:1b}
function cmd:tracking/findplayer
execute as @e[type=arrow,tag=init,limit=1,sort=nearest] run data modify entity @s Owner set from entity @a[tag=found,limit=1] UUID
tag @e[type=arrow,limit=1,sort=nearest] remove init

particle rain ~ ~-29.8 ~ 0.5 0 0.5 1 20
#EFFECTS
particle cloud ~ ~ ~ 1 1 1 0.05 30 force




