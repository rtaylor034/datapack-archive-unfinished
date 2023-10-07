

kill @e[tag=mcr]
kill @e[tag=mcpr]
kill @e[tag=mcp]
kill @e[tag=mcc]
execute as @e[tag=mc] at @s run data merge entity @s {Invulnerable:1b}
execute as @e[tag=mc] at @s unless score @s moving matches 0..10 run scoreboard players set @s moving 1
execute as @e[tag=mc] at @s unless score @s boost matches 0..1000 run scoreboard players set @s boost 0
execute as @e[tag=mc] at @s unless score @s hitwall matches 0..10 run scoreboard players set @s hitwall 0
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s if entity @a[distance=0..0.5] run summon area_effect_cloud ^ ^ ^.5 {Tags:["mcr"],Invisible:1,NoGravity:1,Marker:1}
execute as @a at @s if entity @e[scores={moving=1,stuntimer=0},tag=mc,distance=0..0.5] run summon area_effect_cloud ~ ~ ~ {Tags:["mcp"],Invisible:1,Marker:1,NoGravity:1}
execute as @e[tag=mcp] at @s store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0] 1
execute as @e[tag=mcp] at @s run summon area_effect_cloud ^ ^ ^.5 {Tags:["mcpr"],Invisible:1,Marker:1,NoGravity:1}
execute as @e[tag=mcpr] at @s positioned ~ ~-1 ~ store result entity @s Pos[1] double 1 run data get entity @e[tag=mcr,limit=1,sort=nearest] Pos[1] 1

#TURNING
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.8..0.95] facing entity @e[distance=0..1,tag=mcpr,limit=1,sort=nearest] feet run tp @s ^ ^ ^.085
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.7..0.8] facing entity @e[distance=0..1,tag=mcpr,limit=1,sort=nearest] feet run tp @s ^ ^ ^.05
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.6..0.7] facing entity @e[distance=0..1,tag=mcpr,limit=1,sort=nearest] feet run tp @s ^ ^ ^.045
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.5..0.6] facing entity @e[distance=0..1,tag=mcpr,limit=1,sort=nearest] feet run tp @s ^ ^ ^.03
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.4..0.5] facing entity @e[distance=0..1,tag=mcpr,limit=1,sort=nearest] feet run tp @s ^ ^ ^.027
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.3..0.4] facing entity @e[distance=0..1,tag=mcpr,limit=1,sort=nearest] feet run tp @s ^ ^ ^.025
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.2..0.3] facing entity @e[distance=0..1,tag=mcpr,limit=1,sort=nearest] feet run tp @s ^ ^ ^.03
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.1..0.2] facing entity @e[distance=0..1,tag=mcpr,limit=1,sort=nearest] feet run tp @s ^ ^ ^.02
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.01..0.1] facing entity @e[distance=0..1,tag=mcpr,limit=1,sort=nearest] feet run tp @s ^ ^ ^.01
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.1..0.95] unless block ^ ^1.5 ^1.2 air facing entity @e[distance=0..1,tag=mcpr,limit=1,sort=nearest] feet run tp @s ^ ^ ^.1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.01] run tp @s @e[distance=0..1,tag=mcpr,limit=1,sort=nearest]



#SPEED 5 (ROCKET)
execute as @e[tag=mc,scores={moving=1,speed=5,stuntimer=0}] at @s run execute as @e[tag=mcr,distance=0..1,sort=nearest,limit=1] at @s run tp @s @e[distance=0..1,tag=mcpr,limit=1,sort=nearest]
execute as @e[tag=mc,scores={moving=1,speed=5,stuntimer=0}] at @s if entity @a[distance=0..0.5] run tp @s ~ ~ ~ facing entity @e[distance=0..1,tag=mcr,limit=1,sort=nearest]
execute as @e[tag=mc,scores={moving=1,speed=5,stuntimer=0}] at @s if entity @a[distance=0..0.5] run playsound entity.firework_rocket.launch master @a ~ ~ ~ 0.5 2 0.5
execute as @e[tag=mc,scores={moving=1,speed=5,stuntimer=0}] at @s if entity @a[distance=0..0.5] run particle firework ~ ~.5 ~ 0.2 0.2 0.2 0.2 10 force
execute as @e[tag=mc,scores={moving=1,speed=5,stuntimer=0}] at @s if entity @a[distance=0..0.5] if block ^ ^1.5 ^1.6 air if block ^ ^1.5 ^.6 air run tp @s ^ ^ ^1.5
#DRIFT
execute as @e[tag=mc] at @s if entity @a[distance=0..0.5] run tp @s ~ ~ ~ facing entity @e[distance=0..1,tag=mcr,limit=1,sort=nearest]
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1] at @s if block ^ ^1.5 ^0.85 air if entity @a[distance=0..0.5] run scoreboard players add @s drift 1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=2..5}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.5 0
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=6}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 0.6
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=7}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 0.7
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=8}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 0.8
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=9}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 0.9
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=10}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=11}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 1.1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=12}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 1.2
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=13}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 1.3
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=14}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 1.4
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=15}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 1.5
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=16}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 1.6
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=17}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 1.7
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=18}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 1.8
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=19}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break master @a ~ ~ ~ 0.3 1.9
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=20..1000}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound block.gravel.break block @a ~ ~ ~ 0.3 2
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.95..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=1..1000}] at @s unless block ~ ~-.5 ~ air run scoreboard players set @s drift 0
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=1..19}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run particle cloud ^ ^.2 ^-1.5 0.4 0 0.4 0.1 10 force
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=10..19}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run particle large_smoke ^ ^.1 ^-1.5 0.4 0 0.4 0.1 1 force
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=20..1000}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run particle flame ^ ^.1 ^-1.5 0.4 0 0.4 0.1 2 force
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=20..1000}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run particle large_smoke ^ ^.1 ^-1.5 0.4 0 0.4 0.1 3 force
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=20..1000}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run particle cloud ^ ^.1 ^-1.5 0.4 0 0.4 0.1 3 force
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=20..1000}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run particle smoke ^ ^.1 ^-1.5 0.4 0 0.4 0.1 5 force
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=20}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound item.flintandsteel.use master @a ~ ~ ~ 0.6 1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.35..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=20..1000}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound entity.generic.extinguish_fire master @a ~ ~ ~ 0.1 1.5
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.35] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=10..14}] at @s unless block ~ ~-.5 ~ air run scoreboard players set @s boost 11
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.35] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=15..19}] at @s unless block ~ ~-.5 ~ air run scoreboard players set @s boost 16
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.35] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=20..1000}] at @s unless block ~ ~-.5 ~ air run scoreboard players set @s boost 26
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.35] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=20..1000}] at @s unless block ~ ~-.5 ~ air run playsound entity.blaze.death master @p ~ ~ ~ 0.5 2 0.5
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.35] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=10..14}] at @s unless block ~ ~-.5 ~ air run playsound entity.blaze.death master @p ~ ~ ~ 0.3 1.5 0.3
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.35] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=15..19}] at @s unless block ~ ~-.5 ~ air run playsound entity.blaze.death master @p ~ ~ ~ 0.4 1.8 0.4
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.35] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=10..14}] at @s unless block ~ ~-.5 ~ air run particle flame ^ ^.1 ^-1.5 0.1 0.1 0.1 0.25 30 force
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.35] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=15..19}] at @s unless block ~ ~-.5 ~ air run particle flame ^ ^.1 ^-1.5 0.1 0.1 0.1 0.25 40 force
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.35] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=20..1000}] at @s unless block ~ ~-.5 ~ air run particle flame ^ ^.1 ^-1.5 0.1 0.1 0.1 0.3 50 force
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=1..100}] at @s unless block ~ ~-.5 ~ air run scoreboard players remove @s boost 1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.95..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=1..100}] at @s unless block ~ ~-.5 ~ air run scoreboard players set @s boost 0
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.35] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=1..1000}] at @s unless block ~ ~-.5 ~ air run scoreboard players set @s drift 0
#SOUND SPEED 1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=1..100,drift=0,speed=1,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.9 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 1.1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.01] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=1,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.9 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 .95
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.01..0.1] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=1,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.9 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0.9
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.1..0.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=1,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.86 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0.85
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.2..0.3] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=1,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.8 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0.82
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.3..0.4] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=1,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.67 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0.79
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.4..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=1..1000,speed=1,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.452 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 1.2
#SOUND SPEED 0
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=1..100,drift=0,speed=0,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.9 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.01] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=0,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.9 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 .85
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.01..0.1] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=0,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.9 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0.8
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.1..0.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=0,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.86 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0.75
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.2..0.3] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=0,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.8 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0.72
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.3..0.4] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=0,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.67 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0.69
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.4..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=1..1000,speed=0,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.452 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 1.1
#SOUND SPEED 2
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=1..100,drift=0,speed=2,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 1.2
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.01] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=2,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 1.05
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.01..0.1] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=2,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.1..0.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=2,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0.95
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.2..0.3] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=2,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0.92
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.3..0.4] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0,speed=2,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0.89
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.4..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={drift=1..1000,speed=2,hitwall=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 1.3
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.95..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={boost=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^-0.3 air run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0
#SPEED 1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.01] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=1}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.9 air run tp @s ^ ^ ^0.8
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.01..0.1] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=1}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.86 air run tp @s ^ ^ ^0.77
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.1..0.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=1}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.8 air run tp @s ^ ^ ^0.74
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.2..0.3] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=1}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.67 air run tp @s ^ ^ ^0.7
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.3..0.4] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=1}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.65 air run tp @s ^ ^ ^0.67
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.4..0.5] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=1}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.65 air run tp @s ^ ^ ^0.65
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.5..0.6] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=1}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.55 air run tp @s ^ ^ ^0.62
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.6..0.7] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=1}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.55 air run tp @s ^ ^ ^0.6
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.7..0.8] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=1}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.45 air run tp @s ^ ^ ^0.55
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.8..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=1}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.45 air run tp @s ^ ^ ^0.53
#SPEED 0
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.01] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.71 air run tp @s ^ ^ ^0.6
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.01..0.1] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.68 air run tp @s ^ ^ ^0.57
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.1..0.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.66 air run tp @s ^ ^ ^0.54
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.2..0.3] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.61 air run tp @s ^ ^ ^0.5
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.3..0.4] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.54 air run tp @s ^ ^ ^0.47
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.4..0.5] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.45 air run tp @s ^ ^ ^0.44
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.5..0.6] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.41 air run tp @s ^ ^ ^0.4
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.6..0.7] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.36 air run tp @s ^ ^ ^0.36
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.7..0.8] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.31 air run tp @s ^ ^ ^0.32
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.8..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=0}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.26 air run tp @s ^ ^ ^0.3
#SPEED 2
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0..0.01] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=2}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^1.2 air run tp @s ^ ^ ^1.1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.01..0.1] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=2}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^1.15 air run tp @s ^ ^ ^1.05
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.1..0.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=2}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^1.1 air run tp @s ^ ^ ^1
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.2..0.3] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=2}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^1.04 air run tp @s ^ ^ ^0.93
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.3..0.4] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=2}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.97 air run tp @s ^ ^ ^0.87
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.4..0.5] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=2}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.95 air run tp @s ^ ^ ^0.84
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.5..0.6] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=2}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.91 air run tp @s ^ ^ ^0.8
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.6..0.7] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=2}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.86 air run tp @s ^ ^ ^0.75
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.7..0.8] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=2}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.81 air run tp @s ^ ^ ^0.71
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.8..0.95] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1,scores={speed=2}] at @s unless block ~ ~-.5 ~ air if entity @a[distance=0..0.5] if block ^ ^1.5 ^0.71 air run tp @s ^ ^ ^0.64
#BOOSTS AND SLOWS
execute as @e[tag=mcr] at @s if entity @e[tag=mcpr,distance=0.95..1.2] run execute as @e[distance=0..1,tag=mc,sort=nearest,limit=1] at @s if entity @a[distance=0..0.5] if block ^ ^1.5 ^-0.45 air run tp @s ^ ^ ^0.2
execute as @e[tag=mc,scores={moving=1,boost=1..100,speed=0,stuntimer=0}] at @s if entity @a[distance=0..2] if block ^ ^1.5 ^1 air run tp @s ^ ^ ^0.55
execute as @e[tag=mc,scores={moving=1,boost=1..100,speed=1,stuntimer=0}] at @s if entity @a[distance=0..2] if block ^ ^1.5 ^1 air run tp @s ^ ^ ^0.65
execute as @e[tag=mc,scores={moving=1,boost=1..100,speed=2,stuntimer=0}] at @s positioned ^ ^ ^-1 if entity @a[distance=0..2] positioned ^ ^ ^1 if block ^ ^1.5 ^1 air run tp @s ^ ^ ^0.75
execute as @e[tag=mc,scores={moving=1,i12t2=1..100,speed=0,stuntimer=0}] at @s if entity @a[distance=0..2] if block ^ ^1.5 ^1 air run tp @s ^ ^ ^0.15
execute as @e[tag=mc,scores={moving=1,i12t2=1..100,speed=1,stuntimer=0}] at @s if entity @a[distance=0..2] if block ^ ^1.5 ^1 air run tp @s ^ ^ ^0.25
execute as @e[tag=mc,scores={moving=1,i12t2=1..100,speed=2,stuntimer=0}] at @s positioned ^ ^ ^-1 if entity @a[distance=0..1] positioned ^ ^ ^1 if block ^ ^1.5 ^1 air run tp @s ^ ^ ^0.35
execute as @e[tag=mc,scores={moving=1,i17t=1..1000,speed=0,stuntimer=0}] at @s if entity @a[distance=0..2] if block ^ ^1.5 ^1 air run tp @s ^ ^ ^0.3
execute as @e[tag=mc,scores={moving=1,i17t=1..1000,speed=1,stuntimer=0}] at @s if entity @a[distance=0..2] if block ^ ^1.5 ^1 air run tp @s ^ ^ ^0.4
execute as @e[tag=mc,scores={moving=1,i17t=1..1000,speed=2,stuntimer=0}] at @s positioned ^ ^ ^-1 if entity @a[distance=0..2] positioned ^ ^ ^1 if block ^ ^1.5 ^1 air run tp @s ^ ^ ^0.5
execute as @e[tag=mc,scores={moving=1,slowtimer=1..1000,speed=0,stuntimer=0}] at @s if entity @a[distance=0..2] if block ^ ^1.5 ^-.2 air run tp @s ^ ^ ^-0.2
execute as @e[tag=mc,scores={moving=1,slowtimer=1..1000,speed=1,stuntimer=0}] at @s if entity @a[distance=0..2] if block ^ ^1.5 ^-.3 air run tp @s ^ ^ ^-0.3
execute as @e[tag=mc,scores={moving=1,slowtimer=1..1000,speed=2,stuntimer=0}] at @s if entity @a[distance=0..2] if block ^ ^1.5 ^-.5 air run tp @s ^ ^ ^-0.5
execute as @e[tag=mc,scores={moving=1,slowtimer=1..1000,stuntimer=0}] at @s if entity @a[distance=0..2] run playsound entity.iron_golem.attack master @a ~ ~ ~ 0.2 0.6
#BLOCK COLLISION
execute as @e[tag=mc,scores={moving=1,boost=1..100}] at @s run particle effect ^ ^0.5 ^-3.5 0.5 0.5 0.5 1 2 force
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s unless block ~-.5 ~1 ~ air run tp @s ~.5 ~ ~
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s unless block ~.5 ~1 ~ air run tp @s ~-.5 ~ ~
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s unless block ~ ~1 ~-.5 air run tp @s ~ ~ ~.5
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s unless block ~ ~1 ~.5 air run tp @s ~ ~ ~-.5
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s unless block ~-.4 ~1 ~-.4 air run tp @s ~.4 ~ ~.4
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s unless block ~.4 ~1 ~.4 air run tp @s ~-.4 ~ ~-.4
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s unless block ~.4 ~1 ~-.4 air run tp @s ~-.4 ~ ~.4
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s unless block ~-.4 ~1 ~.4 air run tp @s ~.4 ~ ~-.4






#GRAVITY
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s if block ~ ~-0.5 ~ air run tp @s ~ ~-0.5 ~
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute as @e[scores={moving=1,stuntimer=0},tag=mc] at @s unless block ^ ^ ^0.5 air if block ^ ^1 ^.3 air run tp @s ^ ^1 ^.3
#HITWALL
execute as @e[scores={moving=1,hitwall=0,speed=0},tag=mc] at @s unless block ^ ^1.5 ^.7 air run playsound entity.iron_golem.hurt master @p ~ ~ ~ 0.2 1.2
execute as @e[scores={moving=1,hitwall=0,speed=1},tag=mc] at @s unless block ^ ^1.5 ^.9 air run playsound entity.iron_golem.hurt master @p ~ ~ ~ 0.2 1.2
execute as @e[scores={moving=1,hitwall=0,speed=2},tag=mc] at @s unless block ^ ^1.5 ^1.2 air run playsound entity.iron_golem.hurt master @p ~ ~ ~ 0.2 1.2
execute as @e[scores={moving=1,hitwall=0,speed=0},tag=mc] at @s unless block ^ ^1.5 ^.7 air run particle crit ^ ^ ^.5 0.2 0.2 0.2 1 100 force
execute as @e[scores={moving=1,hitwall=0,speed=1},tag=mc] at @s unless block ^ ^1.5 ^.9 air run particle crit ^ ^ ^.5 0.2 0.2 0.2 1 100 force
execute as @e[scores={moving=1,hitwall=0,speed=2},tag=mc] at @s unless block ^ ^1.5 ^1.2 air run particle crit ^ ^ ^.5 0.2 0.2 0.2 1 100 force
execute as @e[scores={moving=1,hitwall=0,speed=0},tag=mc] at @s unless block ^ ^1.5 ^.7 air run scoreboard players set @s hitwall 1
execute as @e[scores={moving=1,hitwall=0,speed=1},tag=mc] at @s unless block ^ ^1.5 ^.9 air run scoreboard players set @s hitwall 1
execute as @e[scores={moving=1,hitwall=0,speed=2},tag=mc] at @s unless block ^ ^1.5 ^1.2 air run scoreboard players set @s hitwall 1
execute as @e[scores={moving=1,hitwall=1},tag=mc] at @s run playsound entity.iron_golem.attack master @p ~ ~ ~ 0.2 0.6
execute as @e[scores={moving=1,hitwall=1,speed=0},tag=mc] at @s if block ^ ^1.5 ^.7 air run scoreboard players set @s hitwall 0
execute as @e[scores={moving=1,hitwall=1,speed=1},tag=mc] at @s if block ^ ^1.5 ^.9 air run scoreboard players set @s hitwall 0
execute as @e[scores={moving=1,hitwall=1,speed=2},tag=mc] at @s if block ^ ^1.5 ^1.2 air run scoreboard players set @s hitwall 0
#CART COLLISION
execute as @e[tag=mc] at @s if entity @a[distance=0..3] run summon armor_stand ~ ~ ~ {Tags:["mcc"],Invisible:1,NoGravity:1,Marker:1}
execute as @e[tag=mcc] at @s facing entity @e[tag=mcc,distance=0.01..10,sort=nearest,limit=1] feet positioned ^ ^ ^.5 if entity @e[tag=mcc,distance=0..0.49] run playsound entity.zombie.attack_iron_door block @a ~ ~ ~ 0.2 1.1
execute as @e[tag=mcc] at @s facing entity @e[tag=mcc,distance=0.01..10,sort=nearest,limit=1] feet positioned ^ ^ ^.5 if entity @e[tag=mcc,distance=0..0.49] run playsound entity.iron_golem.hurt block @a ~ ~ ~ 0.2 1.2
execute as @e[tag=mcc] at @s facing entity @e[tag=mcc,distance=0.01..10,sort=nearest,limit=1] feet positioned ^ ^ ^.5 if entity @e[tag=mcc,distance=0..0.49] run particle crit ~ ~.5 ~ 0.2 0.2 0.2 1.3 25 force
execute as @e[tag=mcc] at @s facing entity @e[tag=mcc,distance=0.01..10,sort=nearest,limit=1] feet positioned ^ ^ ^.5 if entity @e[tag=mcc,distance=0..0.49] run particle item smooth_stone ~ ~.5 ~ 0.1 0.1 0.1 .5 5 force
execute as @e[tag=mcc] at @s facing entity @e[tag=mcc,distance=0.01..10,sort=nearest,limit=1] feet positioned ^ ^ ^.5 if entity @e[tag=mcc,distance=0..0.49] positioned ^ ^ ^-.5 if block ^ ^ ^-1.5 air run tp @e[tag=mc,distance=0..0.1,limit=1,sort=nearest] ^ ^ ^-1.5

#OFFROAD
execute as @e[tag=offroad,scores={speed=0}] at @s run tp @s ^ ^ ^-.3
execute as @e[tag=offroad,scores={speed=1}] at @s run tp @s ^ ^ ^-.4
execute as @e[tag=offroad,scores={speed=2}] at @s run tp @s ^ ^ ^-.55
execute as @e[tag=offroad,scores={drift=1..1000}] at @s run scoreboard players set @s drift 0
execute as @e[tag=offroad] at @s run particle block slime_block ^ ^ ^-1 0.5 0.1 0.5 1 10
execute as @e[tag=offroad] at @s run playsound block.snow.break block @a ~ ~ ~ 0.5 0


