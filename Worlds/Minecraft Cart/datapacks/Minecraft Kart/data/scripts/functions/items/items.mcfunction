execute as @e at @s store result score @s pos0 run data get entity @s Pos[0]
execute as @e at @s store result score @s pos1 run data get entity @s Pos[1]
execute as @e at @s store result score @s pos2 run data get entity @s Pos[2]
execute as @e at @s if score @s pos1 matches -1000..-1 run kill @s
execute as @e[type=item,nbt={Item:{tag:{item:1}}}] at @s run tag @s add item
execute as @a[scores={iroll=1..100}] at @s positioned ~ ~1 ~ run kill @e[tag=item,distance=0..1]
execute as @e[tag=mc] at @s unless score @s stuntimer matches 0..1000 run scoreboard players set @s stuntimer 0
execute as @e[tag=mc] at @s unless score @s slowtimer matches 0..1000 run scoreboard players set @s slowtimer 0
execute as @e[tag=mc] at @s unless score @s i12t2 matches 0..1000 run scoreboard players set @s i12t2 0
execute as @e[tag=mc] at @s unless score @s i12t3 matches 0..1000 run scoreboard players set @s i12t3 0
execute as @e[tag=mc] at @s unless score @s i12t matches 0..1000 run scoreboard players set @s i12t 0
scoreboard players remove @e[tag=mc,scores={stuntimer=1..1000}] stuntimer 1
scoreboard players remove @e[tag=mc,scores={stuntimer=0}] slowtimer 1
scoreboard players set @e[tag=mc,scores={stuntimer=1..1000}] boost 0
scoreboard players set @e[tag=mc,scores={stuntimer=1..1000}] drift 0
execute as @e[tag=mc,scores={stuntimer=1..1000}] at @s run particle crit ~ ~.5 ~ 0.7 0.7 0.7 0.1 2 force
title @a times 0 10 5

#BOOST
execute as @e[type=item,nbt={Item:{tag:{itemid:1}}}] at @s positioned ~ ~-0.5 ~ run scoreboard players set @e[tag=mc,distance=0..1,sort=nearest,limit=1] boost 31
execute as @e[type=item,nbt={Item:{tag:{itemid:1}}}] at @s positioned ~ ~-0.5 ~ run execute as @e[tag=mc,distance=0..1,sort=nearest,limit=1] at @s run playsound entity.wither.shoot master @a ~ ~ ~ 0.5 1.3
execute as @e[type=item,nbt={Item:{tag:{itemid:1}}}] at @s positioned ~ ~-0.5 ~ run execute as @e[tag=mc,distance=0..1,sort=nearest,limit=1] at @s run particle effect ^ ^1 ^-2.5 0.5 0.5 0.5 1 50 force

#ROCKET
execute as @e[type=item,nbt={Item:{tag:{itemid:2}}}] at @s positioned ~ ~-0.5 ~ run scoreboard players set @e[tag=mc,distance=0..1,sort=nearest,limit=1] i2t 100
execute as @e[tag=mc,scores={moving=1,i2t=2..100}] at @s run scoreboard players set @s speed 5
execute as @e[tag=mc,scores={i2t=1}] at @s run scoreboard players set @s speed 1
execute as @e[tag=mc,scores={i2t=1}] at @s run playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 1 1
execute as @e[tag=mc,scores={i2t=1}] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1 2
execute as @e[tag=mc,scores={i2t=1}] at @s run particle firework ~ ~ ~ 0 0 0 0.5 200 force
execute as @e[tag=mc,scores={i2t=1}] at @s run particle explosion ~ ~ ~ 2 2 2 1 100 force
execute as @e[tag=mc,scores={i2t=2..100}] at @s run execute as @e[tag=mc,distance=0.01..1.5,scores={stuntimer=0..20}] at @s run playsound entity.iron_golem.death block @a ~ ~ ~ 0.7 2
execute as @e[tag=mc,scores={i2t=2..100}] at @s run execute as @e[tag=mc,distance=0.01..1.5,scores={stuntimer=0..20}] at @s run data merge entity @s {Motion:[0.0d,1.0d,0.0d]}
execute as @e[tag=mc,scores={i2t=2..100}] at @s run scoreboard players set @e[tag=mc,distance=0.01..1.5] stuntimer 30
scoreboard players set @e[tag=mc,scores={i2t=2..100,stuntimer=21..1000}] stuntimer 20
scoreboard players set @e[tag=mc,scores={i2t=2..100}] slowtimer 0
scoreboard players remove @e[scores={i2t=1..100}] i2t 1

#TNT

#WALL INTERACTION
execute as @e[tag=i3c] at @s if entity @e[tag=i4c,distance=0..2] run data merge entity @s {Fuse:1}
#MAIN FUNCTION
execute as @e[tag=item,type=item,nbt={Age:1s,Item:{tag:{itemid:3}}}] at @s run summon tnt ~ ~ ~ {Fuse:60s,Tags:["i3c"]}
execute as @e[tag=item,type=item,nbt={Age:1s,Item:{tag:{itemid:3}}}] at @s run playsound entity.tnt.primed block @a ~ ~ ~ 1 1
execute as @e[type=item,nbt={Item:{tag:{itemid:3}}}] at @s run tag @s remove item
execute as @e[type=item,nbt={Item:{tag:{itemid:3}}}] at @s run tag @s add i3
execute as @e[tag=i3c] at @s run tag @s add iteme
execute as @e[type=item,nbt={Item:{tag:{itemid:3}}}] at @s run tag @s add iteme
execute as @e[type=item,nbt={Age:1s,Item:{tag:{itemid:3}}}] at @s store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 8000
execute as @e[type=item,nbt={Age:1s,Item:{tag:{itemid:3}}}] at @s store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] 4000
execute as @e[type=item,nbt={Age:1s,Item:{tag:{itemid:3}}}] at @s store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 8000
execute as @e[type=item,nbt={Item:{tag:{itemid:3}}}] at @s run data merge entity @s {PickupDelay:9999s}
execute as @e[tag=i3c] at @s run data modify entity @s Pos set from entity @e[tag=i3,sort=nearest,limit=1] Pos
execute as @e[tag=i3c,nbt={OnGround:1b}] at @s if entity @e[tag=mc,distance=0..1.4] run data merge entity @s {Fuse:1s}
execute as @e[tag=i3c,nbt={Fuse:1s}] at @s run particle explosion_emitter ~ ~ ~ 1.5 1 1.5 1 15 force
execute as @e[tag=i3c,nbt={Fuse:1s}] at @s run particle large_smoke ~ ~ ~ 1 1 1 0.3 100 force
execute as @e[tag=i3c,nbt={Fuse:1s}] at @s run playsound entity.generic.explode block @a ~ ~ ~ 2 0.8
execute as @e[tag=i3c,nbt={Fuse:1s}] at @s run scoreboard players add @e[tag=mc,distance=0..6] stuntimer 30
execute as @e[tag=i3c,nbt={Fuse:1s}] at @s run scoreboard players add @e[tag=mc,distance=0..6] slowtimer 20
execute as @e[tag=i3c,nbt={Fuse:1s}] at @s run scoreboard players add @e[tag=mc,distance=0..3] stuntimer 20
execute as @e[tag=i3c,nbt={Fuse:1s}] at @s run scoreboard players add @e[tag=mc,distance=0..3] slowtimer 10
execute as @e[tag=i3c,nbt={Fuse:1s}] at @s run execute as @e[tag=mc,distance=0..6] at @s run data merge entity @s {Motion:[0.0d,1.2d,0.0d]}
execute as @e[tag=i3c,nbt={Fuse:1s}] at @s run execute as @e[tag=mc,distance=0..3] at @s run data merge entity @s {Motion:[0.0d,2.0d,0.0d]}
execute as @e[tag=i3c,nbt={Fuse:1s}] at @s run scoreboard players set @e[tag=i4c,distance=0..4] gtimer 113
execute as @e[tag=i3c,nbt={Fuse:1s}] at @s run kill @e[tag=i3,sort=nearest,limit=1]
kill @e[tag=i3c,nbt={Fuse:1s}]

#WALL
execute as @e[tag=item,nbt={Item:{tag:{itemid:4}}}] at @s positioned ~ ~-.5 ~ run execute as @e[tag=mc,distance=0..1,sort=nearest,limit=1] at @s run summon armor_stand ~ ~2 ~ {NoGravity:1,Tags:["i4"],Invisible:1,Marker:1}
execute as @e[tag=i4] at @s positioned ~ ~-2 ~ run data modify entity @s Rotation set from entity @e[tag=mc,limit=1,sort=nearest,distance=0..1] Rotation
execute as @e[tag=i4] at @s run summon armor_stand ~ ~ ~ {Tags:["i4c"],Invisible:1,Marker:1}
execute as @e[tag=i4] at @s run summon armor_stand ^1 ^ ^ {Tags:["i4c"],Invisible:1,Marker:1}
execute as @e[tag=i4] at @s run summon armor_stand ^2 ^ ^ {Tags:["i4c"],Invisible:1,Marker:1}
execute as @e[tag=i4] at @s run summon armor_stand ^-1 ^ ^ {Tags:["i4c"],Invisible:1,Marker:1}
execute as @e[tag=i4] at @s run summon armor_stand ^-2 ^ ^ {Tags:["i4c"],Invisible:1,Marker:1}
kill @e[tag=i4]
scoreboard players add @e[tag=i4c] gtimer 1
execute as @e[tag=i4c,scores={gtimer=5}] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=i4c,scores={gtimer=1..4}] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @e[tag=i4c,scores={gtimer=5}] at @s run setblock ~ ~ ~ bricks keep
execute as @e[tag=i4c,scores={gtimer=5}] at @s run playsound block.stone.place block @a ~ ~ ~ 1 0.8
execute as @e[tag=i4c,scores={gtimer=5}] at @s run particle block bricks ~ ~.5 ~ 0.5 0.5 0.5 1 10 force
execute as @e[tag=i4c,scores={gtimer=10}] at @s run setblock ~ ~1 ~ bricks keep
execute as @e[tag=i4c,scores={gtimer=10}] at @s run playsound block.stone.place block @a ~ ~1 ~ 1 0.8
execute as @e[tag=i4c,scores={gtimer=10}] at @s run particle block bricks ~ ~1.5 ~ 0.5 0.5 0.5 1 10 force
execute as @e[tag=i4c,scores={gtimer=15}] at @s run setblock ~ ~2 ~ bricks keep
execute as @e[tag=i4c,scores={gtimer=15}] at @s run playsound block.stone.place block @a ~ ~2 ~ 1 0.8
execute as @e[tag=i4c,scores={gtimer=15}] at @s run particle block bricks ~ ~2.5 ~ 0.5 0.5 0.5 1 10 force
execute as @e[tag=i4c,scores={gtimer=115}] at @s run fill ~ ~ ~ ~ ~2 ~ air replace bricks
execute as @e[tag=i4c,scores={gtimer=115}] at @s run particle block bricks ~ ~.5 ~ 0.55 .55 0.55 5 70
execute as @e[tag=i4c,scores={gtimer=115}] at @s run particle block bricks ~ ~1.5 ~ 0.55 .55 0.55 5 70
execute as @e[tag=i4c,scores={gtimer=115}] at @s run particle block bricks ~ ~2.5 ~ 0.55 .55 0.55 5 70
execute as @e[tag=i4c,scores={gtimer=115}] at @s run playsound block.stone.place block @a ~ ~ ~ 1 0.8
kill @e[tag=i4c,scores={gtimer=115}]

#SLIME
execute as @e[tag=i5] at @s run tag @s add iteme
execute as @e[tag=i5c] at @s run tag @s add iteme
execute as @e[tag=item,nbt={Item:{tag:{itemid:5}}}] at @s positioned ~ ~-.5 ~ run execute as @p at @s run summon slime ^ ^.5 ^1 {NoAI:1,Size:1,Tags:["i5"]}
scoreboard players add @e[tag=i5] gtimer 1
execute as @e[tag=i5,scores={gtimer=1}] at @s run data modify entity @s Rotation[0] set from entity @p Rotation[0]
execute as @e[tag=i5] at @s if block ~ ~-.5 ~ air run tp @s ~ ~-.5 ~
execute as @e[tag=i5] at @s if block ^ ^1.5 ^2 air run tp @s ^ ^ ^2
execute as @e[tag=i5] at @s unless block ^ ^ ^.5 air if block ^ ^1.5 ^2 air run tp @s ^ ^1 ^2
execute as @e[tag=i5] at @s unless block ^ ^ ^.5 air if block ^ ^1.5 ^1 air run tp @s ^ ^1 ^1
execute as @e[tag=i5,scores={gtimer=2..300}] at @s run summon armor_stand ^ ^ ^-1 {Invisible:1,NoGravity:1,Tags:["i5c"],Marker:1}
execute as @e[tag=i5] at @s run particle item_slime ^ ^ ^-1 0.5 0.5 0.5 1 5 force
execute as @e[tag=i5,scores={gtimer=2..300}] at @s unless block ^ ^1.5 ^2 air run particle item slime_ball ~ ~ ~ 0.5 0.5 0.5 0.3 150 force
execute as @e[tag=i5,scores={gtimer=2..300}] at @s unless block ^ ^1.5 ^2 air run particle item slime_block ~ ~ ~ 0.5 0.5 0.5 0.3 100 force
execute as @e[tag=i5,scores={gtimer=2..300}] at @s unless block ^ ^1.5 ^2 air run playsound entity.slime.attack master @a ~ ~ ~ 1 0
execute as @e[tag=i5,scores={gtimer=2..300}] at @s unless block ^ ^1.5 ^2 air run scoreboard players add @e[scores={stuntimer=0..19},tag=mc,distance=0..2] stuntimer 20
execute as @e[tag=i5,scores={gtimer=2..300}] at @s unless block ^ ^1.5 ^2 air run scoreboard players set @e[tag=mc,distance=0..2] slowtimer 40
execute as @e[tag=i5,scores={gtimer=2..300}] at @s unless block ^ ^1.5 ^2 air run tp @s ~ ~-1000 ~
execute as @e[tag=i5,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.3] run particle item slime_ball ~ ~ ~ 0.5 0.5 0.5 0.3 200 force
execute as @e[tag=i5,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.3] run playsound entity.slime.attack master @a ~ ~ ~ 1 0
execute as @e[tag=i5,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.3] run scoreboard players add @e[scores={stuntimer=0..19},tag=mc,distance=0..1.3] stuntimer 20
execute as @e[tag=i5,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.3] run scoreboard players set @e[tag=mc,distance=0..1.3] slowtimer 40
execute as @e[tag=i5,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.3] run execute as @e[tag=mc,distance=0..1.3] at @s run data merge entity @s {Motion:[0.0d,0.9d,0.0d]}
execute as @e[tag=i5,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.3] run tp @s ~ ~-1000 ~
execute as @e[tag=i5c] at @s if entity @e[tag=mc,distance=0..1.3] run particle item slime_ball ~ ~ ~ 0.5 0.5 0.5 0.3 150 force
execute as @e[tag=i5c] at @s if entity @e[tag=mc,distance=0..1.3] run particle item slime_block ~ ~ ~ 0.5 0.5 0.5 0.3 100 force
execute as @e[tag=i5c] at @s if entity @e[tag=mc,distance=0..1.3] run playsound entity.slime.attack master @a ~ ~ ~ 1 0
execute as @e[tag=i5c] at @s if entity @e[tag=mc,distance=0..1.3] run scoreboard players add @e[scores={stuntimer=0..19},tag=mc,distance=0..1.3] stuntimer 20
execute as @e[tag=i5c] at @s if entity @e[tag=mc,distance=0..1.3] run scoreboard players set @e[tag=mc,distance=0..1.3] slowtimer 40
execute as @e[tag=i5c] at @s if entity @e[tag=mc,distance=0..1.3] run execute as @e[tag=mc,distance=0..1.3] at @s run data merge entity @s {Motion:[0.0d,0.9d,0.0d]}
execute as @e[tag=i5c] at @s if entity @e[tag=mc,distance=0..1.3] run tp @e[tag=i5,distance=0.5..1.5,limit=1] ~ ~-200 ~
kill @e[tag=i5c]
execute as @e[tag=i5,scores={gtimer=300}] at @s run tp @s ~ ~-1000 ~

#ITEM SHIELD
execute as @e[tag=item,nbt={Item:{tag:{itemid:6}}}] at @s positioned ~ ~-.5 ~ run scoreboard players add @e[tag=mc,limit=1,sort=nearest,distance=0..1] ishield 1
execute as @e[tag=item,nbt={Item:{tag:{itemid:6}}}] at @s positioned ~ ~-.5 ~ run playsound block.beacon.power_select master @p ~ ~ ~ 2 2
execute as @e[tag=mc,scores={ishield=1..100}] at @s run title @p[distance=0..1] actionbar ["",{"text":"Shield Charges","bold":true,"color":"aqua"},{"text":" "},{"text":":","color":"gray"},{"text":" "},{"score":{"name":"@e[tag=mc,sort=nearest,limit=1,distance=0..1]","objective":"ishield"},"bold":true}]
execute as @e[tag=mc,scores={ishield=1..100,stuntimer=1..1000}] at @s run scoreboard players set @s stuntimer 1
execute as @e[tag=mc,scores={ishield=1..100,stuntimer=1..1000}] at @s run scoreboard players set @s slowtimer 0
execute as @e[tag=mc,scores={ishield=1..100,slowtimer=1..1000}] at @s run scoreboard players set @s slowtimer 1
execute as @e[tag=mc,scores={ishield=1..100,stuntimer=1}] at @s run playsound item.trident.return master @a ~ ~ ~ 1 0
execute as @e[tag=mc,scores={ishield=1..100,slowtimer=1}] at @s run playsound item.trident.return master @a ~ ~ ~ 1 0
execute as @e[tag=mc,scores={ishield=1..100,stuntimer=1}] at @s run particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.3 200 force
execute as @e[tag=mc,scores={ishield=1..100,slowtimer=1}] at @s run particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.3 200 force
execute as @e[tag=mc,scores={ishield=1..100,stuntimer=1}] at @s run scoreboard players remove @s ishield 1
execute as @e[tag=mc,scores={ishield=1..100,slowtimer=1}] at @s run scoreboard players remove @s ishield 1

#FIREBALL
execute as @e[tag=i7c] at @s run tag @s add iteme
execute as @e[tag=i7] at @s run tag @s add iteme
execute as @e[tag=item,nbt={Item:{tag:{itemid:7}}}] at @s positioned ~ ~-.5 ~ run execute as @p at @s run summon armor_stand ^ ^1.5 ^1 {Invisible:1,NoGravity:1,Marker:1,Tags:["i7"]}
execute as @e[tag=item,nbt={Item:{tag:{itemid:7}}}] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 1 1
scoreboard players add @e[tag=i7] gtimer 1
execute as @e[tag=i7,scores={gtimer=1}] at @s run data modify entity @s Rotation set from entity @p Rotation
execute as @e[tag=i7] at @s if block ^ ^ ^1.9 air run tp @s ^ ^ ^1.9
execute as @e[tag=i7,scores={gtimer=2..300}] at @s run summon armor_stand ^ ^ ^-1 {Invisible:1,NoGravity:1,Tags:["i7c"],Marker:1}
execute as @e[tag=i7] at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @e[tag=i7] at @s run particle smoke ^ ^ ^-1 0.2 0.2 0.2 0.05 10 force
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run particle flame ~ ~ ~ 0.3 0.3 0.3 0.3 100 force
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run particle explosion_emitter ~ ~ ~ 1 1 1 1 5 force
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run particle lava ~ ~ ~ 1 1 .3 1 50 force
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run particle large_smoke ~ ~ ~ 1 1 1 .3 50 force
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run playsound entity.generic.explode master @a ~ ~ ~ 2 0.9
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run scoreboard players set @e[tag=mc,distance=0..5] stuntimer 20
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run scoreboard players set @e[tag=mc,distance=0..5] slowtimer 40
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run scoreboard players set @e[tag=mc,distance=0..5] i7t 60
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run scoreboard players set @e[tag=mc,distance=0..2.5] stuntimer 40
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run scoreboard players set @e[tag=mc,distance=0..2.5] slowtimer 80
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run scoreboard players set @e[tag=mc,distance=0..2.5] i7t 120
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run execute as @e[tag=mc,distance=0..5] at @s run data merge entity @s {Motion:[0.0d,1.0d,0.0d]}
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run execute as @e[tag=mc,distance=0..2.5] at @s run data merge entity @s {Motion:[0.0d,1.5d,0.0d]}
execute as @e[tag=i7,scores={gtimer=2..300}] at @s unless block ^ ^ ^1.9 air run kill @s
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.3 100 force
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run particle explosion_emitter ~ ~ ~ 1 1 1 1 5 force
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run particle lava ~ ~ ~ 1 .3 1 1 50 force
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run particle large_smoke ~ ~ ~ 1 1 1 .3 50 force
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run playsound entity.generic.explode master @a ~ ~ ~ 2 0.9
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run scoreboard players set @e[tag=mc,distance=0..5] stuntimer 20
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run scoreboard players set @e[tag=mc,distance=0..5] slowtimer 40
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run scoreboard players set @e[tag=mc,distance=0..5] i7t 60
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run scoreboard players set @e[tag=mc,distance=0..2.5] stuntimer 40
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run scoreboard players set @e[tag=mc,distance=0..2.5] slowtimer 80
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run scoreboard players set @e[tag=mc,distance=0..2.5] i7t 120
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run execute as @e[tag=mc,distance=0..5] at @s run data merge entity @s {Motion:[0.0d,1.0d,0.0d]}
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run execute as @e[tag=mc,distance=0..2.5] at @s run data merge entity @s {Motion:[0.0d,1.5d,0.0d]}
execute as @e[tag=i7,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run kill @s
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.3 100 force
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run particle explosion_emitter ~ ~ ~ 1 1 1 1 5 force
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run particle lava ~ ~ ~ 1 .3 1 1 50 force
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run particle large_smoke ~ ~ ~ 1 1 1 .3 50 force
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run playsound entity.generic.explode master @a ~ ~ ~ 1 0.9
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run scoreboard players set @e[tag=mc,distance=0..5] stuntimer 20
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run scoreboard players set @e[tag=mc,distance=0..5] slowtimer 40
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run scoreboard players set @e[tag=mc,distance=0..5] i7t 60
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run scoreboard players set @e[tag=mc,distance=0..2.5] stuntimer 40
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run scoreboard players set @e[tag=mc,distance=0..2.5] slowtimer 80
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run scoreboard players set @e[tag=mc,distance=0..2.5] i7t 120
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run execute as @e[tag=mc,distance=0..5] at @s run data merge entity @s {Motion:[0.0d,1.0d,0.0d]}
execute as @e[tag=i7c,scores={gtimer=2..300}] at @s if entity @e[tag=mc,distance=0..1.4] run execute as @e[tag=mc,distance=0..2.5] at @s run data merge entity @s {Motion:[0.0d,1.5d,0.0d]}
kill @e[tag=i7c]
kill @e[tag=i7,scores={gtimer=300}]
execute as @e[tag=mc,scores={i7t=1..1000}] at @s run particle flame ~ ~.5 ~ 0.5 0.5 0.5 0.01 1 force
scoreboard players remove @e[tag=mc,scores={i7t=1..1000}] i7t 1

#ANVIL
execute as @e[tag=i9] at @s run tag @s add iteme
execute as @e[tag=i9] at @s run summon falling_block ~ ~ ~ {DropItem:0,BlockState:{Name:"minecraft:anvil"},FallHurtAmount:0.0f,Tags:["i9c"],NoGravity:1}
execute as @e[tag=item,type=item,nbt={Age:1s,Item:{tag:{itemid:9}}}] at @s run playsound entity.snowball.throw block @a ~ ~ ~ 1 0
execute as @e[type=item,nbt={Item:{tag:{itemid:9}}}] at @s run tag @s remove item
execute as @e[type=item,nbt={Item:{tag:{itemid:9}}}] at @s run tag @s add i9
execute as @e[type=item,nbt={Age:1s,Item:{tag:{itemid:9}}}] at @s store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 13000
execute as @e[type=item,nbt={Age:1s,Item:{tag:{itemid:9}}}] at @s store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] 5000
execute as @e[type=item,nbt={Age:1s,Item:{tag:{itemid:9}}}] at @s store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 13000
execute as @e[type=item,nbt={Item:{tag:{itemid:9}}}] at @s run data merge entity @s {PickupDelay:9999s}
scoreboard players add @e[tag=i9,nbt={OnGround:1b}] i9t 1
execute as @e[tag=i9,nbt={OnGround:1b},scores={i9t=1}] at @s run playsound block.anvil.land block @a ~ ~ ~ 1.2 0.9
execute as @e[tag=i9,nbt={OnGround:1b},scores={i9t=100}] at @s run playsound block.anvil.break block @a ~ ~ ~ 1.2 0.8
execute as @e[tag=i9,nbt={OnGround:1b},scores={i9t=100}] at @s run particle block anvil ~ ~.5 ~ 0.3 0.3 0.3 1 100 force
execute as @e[tag=i9,nbt={OnGround:1b},scores={i9t=1}] at @s run particle crit ~ ~ ~ 1 0 1 1 150 force
execute as @e[tag=i9,nbt={OnGround:1b},scores={i9t=1}] at @s run scoreboard players add @e[tag=mc,distance=0..2] stuntimer 10
execute as @e[tag=i9,nbt={OnGround:1b},scores={i9t=1}] at @s run execute as @e[tag=mc,distance=0..2] at @s run data merge entity @s {Motion:[0.0d,0.7d,0.0d]}
execute as @e[tag=i9,nbt={OnGround:1b},scores={i9t=100}] at @s run kill @s
scoreboard players add @e[tag=i9] gtimer 1
execute as @e[tag=i9] at @s unless score @s i9d matches 0..1 run scoreboard players set @s i9d 0
execute as @e[tag=i9,scores={gtimer=4..500},nbt={OnGround:0b}] at @s positioned ~ ~-1 ~ if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] run playsound block.anvil.land block @a ~ ~ ~ 1.2 1
execute as @e[tag=i9,scores={gtimer=4..500},nbt={OnGround:0b}] at @s positioned ~ ~-1 ~ if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] run execute as @e[tag=mc,distance=0..1.4] at @s run particle crit ~ ~.5 ~ 0.2 0.2 0.2 1.5 100 force
execute as @e[tag=i9,scores={gtimer=4..500},nbt={OnGround:0b}] at @s positioned ~ ~-1 ~ if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] run particle crit ~ ~1.5 ~ 0.1 0.1 0.1 2 200
execute as @e[tag=i9,scores={gtimer=4..500},nbt={OnGround:0b}] at @s positioned ~ ~-1 ~ if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] store result entity @s Motion[0] double 0 run data get entity @s Motion[0] 0
execute as @e[tag=i9,scores={gtimer=4..500},nbt={OnGround:0b}] at @s positioned ~ ~-1 ~ if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] store result entity @s Motion[2] double 0 run data get entity @s Motion[2] 0
execute as @e[tag=i9,scores={gtimer=4..500},nbt={OnGround:0b}] at @s positioned ~ ~-1 ~ if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] run scoreboard players set @s i9d 1
execute as @e[tag=i9,scores={gtimer=4..500},nbt={OnGround:0b}] at @s positioned ~ ~-1 ~ if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] run scoreboard players set @e[tag=mc,distance=0..1.4] slowtimer 40
execute as @e[tag=i9,scores={gtimer=4..500},nbt={OnGround:0b}] at @s positioned ~ ~-1 ~ if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] run scoreboard players set @e[tag=mc,distance=0..1.4] stuntimer 80

execute as @e[tag=i9,scores={gtimer=4..500,i9d=0},nbt={OnGround:1b}] at @s if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] run playsound block.anvil.land block @a ~ ~ ~ 1.2 1.1
execute as @e[tag=i9,scores={gtimer=4..500,i9d=0},nbt={OnGround:1b}] at @s if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] run execute as @e[tag=mc,distance=0..1.4] at @s run particle crit ~ ~.5 ~ 0.2 0.2 0.2 1.5 75 force
execute as @e[tag=i9,scores={gtimer=4..500,i9d=0},nbt={OnGround:1b}] at @s if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] run particle crit ~ ~1.5 ~ 0.1 0.1 0.1 2 100
execute as @e[tag=i9,scores={gtimer=4..500,i9d=0},nbt={OnGround:1b}] at @s if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
execute as @e[tag=i9,scores={gtimer=4..500,i9d=0},nbt={OnGround:1b}] at @s if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..40}] run scoreboard players add @e[tag=mc,distance=0..1.4] slowtimer 20
execute as @e[tag=i9,scores={gtimer=4..500,i9d=0},nbt={OnGround:1b}] at @s if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..40}] run scoreboard players add @e[tag=mc,distance=0..1.4] stuntimer 20
execute as @e[tag=i9,scores={gtimer=4..500,i9d=0},nbt={OnGround:1b}] at @s if entity @e[tag=mc,distance=0..1.4,scores={stuntimer=0..60}] run scoreboard players set @s i9d 1
kill @e[tag=i9,scores={gtimer=500}]

#FAKE ITEM BOX
execute as @e[tag=fib] at @s run tag @s add iteme
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:10}}}] at @s run execute as @e[tag=mc,sort=nearest,limit=1,distance=0..2] at @s run summon end_crystal ^ ^.5 ^-2 {Tags:["fib"],ShowBottom:0b}
scoreboard players add @e[tag=fib] gtimer 1
execute as @e[tag=fib] at @s run particle enchant ~ ~0.7 ~ 0.2 0.2 0.2 0 2 force
execute as @e[tag=fib] at @s if entity @e[tag=mc,distance=0..1.3] run particle explosion ~ ~.5 ~ 1 1 1 1 10 force
execute as @e[tag=fib] at @s if entity @e[tag=mc,distance=0..1.3] run particle witch ~ ~.5 ~ .7 .7 .7 1 100 force
execute as @e[tag=fib] at @s if entity @e[tag=mc,distance=0..1.3] run particle item magenta_stained_glass ~ ~.5 ~ .5 .5 .5 .4 300 force
execute as @e[tag=fib] at @s if entity @e[tag=mc,distance=0..1.3] run particle item purple_stained_glass ~ ~.5 ~ .5 .5 .5 .4 300 force
execute as @e[tag=fib] at @s if entity @e[tag=mc,distance=0..1.3] run playsound block.glass.break block @a ~ ~ ~ 1 0
execute as @e[tag=fib] at @s if entity @e[tag=mc,distance=0..1.3] run playsound entity.generic.explode block @a ~ ~ ~ 1 2
execute as @e[tag=fib] at @s run scoreboard players add @e[tag=mc,distance=0..1.3] stuntimer 45
execute as @e[tag=fib] at @s run scoreboard players add @e[tag=mc,distance=0..1.3] slowtimer 35
execute as @e[tag=fib] at @s if entity @e[tag=mc,distance=0..1.3] run execute as @e[tag=mc,distance=0..1.3] at @s run data merge entity @s {Motion:[0.0d,1.7d,0.0d]}
execute as @e[tag=fib] at @s if entity @e[tag=mc,distance=0..1.3] run kill @s
kill @e[tag=fib,scores={gtimer=1000}]

#SMITE
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:11}}}] at @s run execute as @e[tag=mc,distance=2..1000] at @s run summon lightning_bolt ~ ~ ~
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:11}}}] at @s run execute as @e[tag=mc,distance=2..1000] at @s run particle item sea_lantern ~ ~.5 ~ 0.3 0 0.3 .6 250 
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:11}}}] at @s run execute as @e[tag=mc,distance=2..1000] at @s run particle end_rod ~ ~.5 ~ 0.3 0 0.3 .3 30 force
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:11}}}] at @s run scoreboard players add @e[tag=mc,distance=2..1000] stuntimer 40
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:11}}}] at @s run scoreboard players add @e[tag=mc,distance=2..1000] slowtimer 30

#TIME BOMB
scoreboard players add @e[tag=i12] gtimer 1
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:12}}}] at @s run scoreboard players set @e[tag=mc,distance=0..2,limit=1,sort=nearest] i12t 1
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:12}}}] at @s run playsound entity.tnt.primed master @p ~ ~ ~ 0.6 1
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:12}}}] at @s run summon item ~ ~ ~ {NoGravity:1,PickupDelay:999s,Tags:["i12"],Item:{id:"minecraft:tnt",Count:1}}
execute as @e[tag=mc,scores={i12t2=1..100,hitwall=0,stuntimer=0}] at @s run tp @e[tag=i12,limit=1,sort=nearest] ^ ^1.7 ^-3
execute as @e[tag=mc,scores={i12t2=1..100,hitwall=1}] at @s run tp @e[tag=i12,limit=1,sort=nearest] ^ ^1.7 ^
execute as @e[tag=mc,scores={i12t2=1..100,stuntimer=1..10000}] at @s run tp @e[tag=i12,limit=1,sort=nearest] ^ ^1.7 ^
execute as @e[tag=i12] at @s run data merge entity @s {PickupDelay:99s}
execute as @e[tag=i12] at @s run particle smoke ~ ~.5 ~ 0 0 0 0.01 1 force
execute as @e[tag=mc,scores={i12t2=1..100}] at @s run playsound entity.tnt.primed master @a ~ ~ ~ 0.3 2
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:12}}}] at @s run scoreboard players set @e[tag=mc,distance=0..2,limit=1,sort=nearest] i12t2 60
execute as @e[tag=mc,scores={i12t2=1..100}] at @s if score @s i12t >= @s i12t2 run playsound minecraft:block.note_block.hat block @a ~ ~ ~ .5 2
execute as @e[tag=mc,scores={i12t2=1..100}] at @s if score @s i12t >= @s i12t2 run scoreboard players remove @s i12t2 1
execute as @e[tag=mc,scores={i12t2=1}] at @s if score @s i12t >= @s i12t2 run particle explosion_emitter ~ ~1 ~ 1 1 1 1 5 force
execute as @e[tag=mc,scores={i12t2=1}] at @s if score @s i12t >= @s i12t2 run particle large_smoke ~ ~1 ~ 1 1 1 .3 100 force
execute as @e[tag=mc,scores={i12t2=1}] at @s if score @s i12t >= @s i12t2 run kill @e[tag=i12,sort=nearest,limit=1]
execute as @e[tag=mc,scores={i12t2=1}] at @s if score @s i12t >= @s i12t2 run playsound entity.generic.explode master @a ~ ~ ~ 1 1
execute as @e[tag=mc,scores={i12t2=1}] at @s if score @s i12t >= @s i12t2 run scoreboard players add @e[tag=mc,distance=0..2] stuntimer 40
execute as @e[tag=mc,scores={i12t2=1}] at @s if score @s i12t >= @s i12t2 run scoreboard players add @e[tag=mc,distance=0..2] slowtimer 80
execute as @e[tag=mc,scores={i12t2=1}] at @s if score @s i12t >= @s i12t2 run scoreboard players add @e[tag=mc,distance=0..3] stuntimer 20
execute as @e[tag=mc,scores={i12t2=1}] at @s if score @s i12t >= @s i12t2 run scoreboard players add @e[tag=mc,distance=0..3] slowtimer 20
execute as @e[tag=mc,scores={i12t2=1}] at @s if score @s i12t >= @s i12t2 run execute as @e[tag=mc,distance=0..3] at @s run data merge entity @s {Motion:[0.0,1.0,0.0]}
execute as @e[tag=mc,scores={i12t2=1}] at @s if score @s i12t >= @s i12t2 run execute as @e[tag=mc,distance=0..2] at @s run data merge entity @s {Motion:[0.0,2.2,0.0]}
execute as @e[tag=mc,scores={i12t2=1..100}] at @s if score @s i12t >= @s i12t2 run scoreboard players set @s i12t 0
scoreboard players add @e[scores={i12t2=1..100}] i12t 5
execute as @e[tag=mc,scores={i12t2=1..100}]
scoreboard players remove @e[scores={i12t3=1..100}] i12t3 1
execute as @e[tag=mc,scores={i12t2=1..100,i12t3=0}] at @s if entity @e[tag=mc,scores={i12t2=0},distance=0.05..1.5] run tag @e[tag=mc,scores={i12t2=0},distance=0.05..1.5] add i12g
execute as @e[tag=mc,scores={i12t2=1..100,i12t3=0}] at @s if entity @e[tag=i12g] run tp @e[tag=i12,limit=1,sort=nearest] @e[tag=i12g,limit=1,sort=nearest]
execute as @e[tag=mc,scores={i12t2=1..100,i12t3=0}] at @s if entity @e[tag=i12g] run execute as @e[tag=i12g,limit=1,sort=nearest] at @s run playsound entity.tnt.primed master @a ~ ~ ~ 1 1
execute as @e[tag=mc,scores={i12t2=1..100,i12t3=0}] at @s if entity @e[tag=i12g] run execute as @e[tag=i12g,limit=1,sort=nearest] at @s run particle lava ^ ^1.7 ^-3 0.1 0.1 0.1 1 10 force
execute as @e[tag=mc,scores={i12t2=1..100,i12t3=0}] at @s if entity @e[tag=i12g] run scoreboard players operation @e[tag=mc,scores={i12t2=0},distance=0.05..1.5,limit=1,sort=nearest] i12t2 = @s i12t2
execute as @e[tag=mc,scores={i12t2=1..100,i12t3=0}] at @s if entity @e[tag=i12g] run scoreboard players add @e[tag=i12g,limit=1,sort=nearest] i12t2 1
execute as @e[tag=mc,scores={i12t2=1..100,i12t3=0}] at @s if entity @e[tag=i12g] run scoreboard players set @e[tag=i12g,limit=1,sort=nearest] i12t 1
execute as @e[tag=mc,scores={i12t2=1..100,i12t3=0}] at @s if entity @e[tag=i12g] run scoreboard players set @e[tag=i12g,limit=1,sort=nearest] i12t3 20
execute as @e[tag=mc,scores={i12t2=1..100,i12t3=0}] at @s if entity @e[tag=i12g] run scoreboard players set @s i12t2 0
tag @e remove i12g
kill @e[tag=i12,scores={gtimer=2000}]

#SMALL SLIME
execute as @e[tag=i13c] at @s run tag @s add iteme
execute as @e[tag=i13] at @s run tag @s add iteme
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:13}}}] at @s run execute as @e[tag=mc,distance=0..2,limit=1,sort=nearest] at @s run summon slime ^ ^ ^-1 {Invulnerable:1,Tags:["i13c"]}
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:13}}}] at @s run execute as @e[tag=mc,distance=0..2,limit=1,sort=nearest] at @s run summon armor_stand ^ ^ ^-1 {Invisible:1,Marker:1,Tags:["i13"]}
execute as @e[tag=i13c] at @s run data modify entity @s Pos[0] set from entity @e[tag=i13,limit=1,sort=nearest] Pos[0]
execute as @e[tag=i13c] at @s run data modify entity @s Pos[2] set from entity @e[tag=i13,limit=1,sort=nearest] Pos[2]
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:13}}}] at @s run playsound entity.slime.hurt_small block @a ~ ~ ~ 0.5 1
scoreboard players add @e[tag=i13] gtimer 1
execute as @e[tag=i13,scores={gtimer=2..10000}] at @s if entity @e[tag=mc,distance=0..1.3] run playsound entity.slime.death block @a ~ ~ ~ 0.8 1.3
execute as @e[tag=i13,scores={gtimer=2..10000}] at @s if entity @e[tag=mc,distance=0..1.3] run execute as @e[tag=i13c,limit=1,sort=nearest,distance=0..3] at @s run particle item slime_ball ~ ~ ~ 0.2 0.2 0.2 0.2 100
execute as @e[tag=i13,scores={gtimer=2..10000}] at @s if entity @e[tag=mc,distance=0..1.3] run execute as @e[tag=i13c,limit=1,sort=nearest,distance=0..3] at @s run particle item slime_block ~ ~ ~ 0.2 0.2 0.2 0.2 100
execute as @e[tag=i13,scores={gtimer=2..10000}] at @s if entity @e[tag=mc,distance=0..1.3] run scoreboard players add @e[tag=mc,distance=0..1.3] stuntimer 10
execute as @e[tag=i13,scores={gtimer=2..10000}] at @s if entity @e[tag=mc,distance=0..1.3] run scoreboard players add @e[tag=mc,distance=0..1.3] slowtimer 30
execute as @e[tag=i13,scores={gtimer=2..10000}] at @s if entity @e[tag=mc,distance=0..1.3] run tp @e[tag=i13c,limit=1,sort=nearest,distance=0..3] ~ ~-1000 ~
execute as @e[tag=i13,scores={gtimer=2..10000}] at @s if entity @e[tag=mc,distance=0..1.3] run kill @s
execute as @e[tag=i13,scores={gtimer=10000}] at @s run kill @e[tag=i13c,sort=nearest,limit=1,distance=0..5]
execute as @e[tag=i13c] at @s unless entity @e[tag=i13,distance=0..3] run tp @s ~ ~-100 ~
execute as @e[tag=i13c] at @s unless entity @e[tag=i13,distance=0..3] run kill @s
execute as @e[tag=i13] at @s unless entity @e[tag=i13c,distance=0..3] run kill @s
kill @e[tag=i13,scores={gtimer=10000}]

#SMOKE SCREEN
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:15}}}] at @s run execute as @e[tag=mc,distance=2..1000] at @s run scoreboard players set @s i15t 200
scoreboard players remove @e[scores={i15t=1..1000}] i15t 1
execute as @e[scores={i15t=1..1000}] at @s run particle explosion ^ ^1 ^2 4 4 4 1 20 normal @p
execute as @e[scores={i15t=1..1000}] at @s run playsound block.fire.extinguish block @a ~ ~ ~ 0.1 0

#SHOCKWAVE
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:16}}}] at @s run execute as @e[tag=mc,distance=0..2,limit=1,sort=nearest] at @s run particle crit ~ ~ ~ 4 0.1 4 1 2000
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:16}}}] at @s run execute as @e[tag=mc,distance=0..2,limit=1,sort=nearest] at @s run playsound entity.iron_golem.death block @a ~ ~ ~ 1 2
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:16}}}] at @s run execute as @e[tag=mc,distance=0..2,limit=1,sort=nearest] at @s run execute as @e[tag=mc,distance=0.1..7] at @s run scoreboard players add @s stuntimer 30
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:16}}}] at @s run execute as @e[tag=mc,distance=0..2,limit=1,sort=nearest] at @s run execute as @e[tag=mc,distance=0.1..7] at @s run scoreboard players add @s slowtimer 40
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:16}}}] at @s run execute as @e[tag=mc,distance=0..2,limit=1,sort=nearest] at @s run execute as @e[tag=mc,distance=0.1..7] at @s run data merge entity @s {Motion:[0.0,1.5,0.0]}
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:16}}}] at @s run execute as @e[tag=mc,distance=0..2,limit=1,sort=nearest] at @s run execute as @e[tag=iteme,distance=0.1..7] at @s run particle poof ~ ~ ~ 0.1 0.1 0.1 0.1 50
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:16}}}] at @s run execute as @e[tag=mc,distance=0..2,limit=1,sort=nearest] at @s run execute as @e[tag=iteme,distance=0.1..7] at @s run particle poof ~ ~ ~ 0.1 0.1 0.1 0.3 50
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:16}}}] at @s run execute as @e[tag=mc,distance=0..2,limit=1,sort=nearest] at @s run execute as @e[tag=iteme,distance=0.1..7] at @s run playsound entity.wither.break_block block @a ~ ~ ~ 0.5 1.5
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:16}}}] at @s run execute as @e[tag=mc,distance=0..2,limit=1,sort=nearest] at @s run execute as @e[tag=iteme,distance=0.1..7] at @s run kill @s

#STAR POWER
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:17}}}] at @s run playsound entity.player.levelup master @a ~ ~ ~ 0.5 2
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:17}}}] at @s run scoreboard players set @e[tag=mc,distance=0..2,limit=1,sort=nearest] i17t 160
scoreboard players remove @e[scores={i17t=1..1000}] i17t 1
scoreboard players set @e[tag=mc,scores={i17t=1..1000}] stuntimer 0
scoreboard players set @e[tag=mc,scores={i17t=1..1000}] slowtimer 0
execute as @e[tag=mc,scores={i17t=1..1000}] at @s run particle dust 255 255 255 1 ^ ^ ^-3 1 1 1 1 20

#SEEKER
execute as @e[tag=i8] at @s run tag @s add iteme
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:8}}}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["i8"],Duration:1000}
execute as @e[tag=item,type=item,nbt={Item:{tag:{itemid:8}}}] at @s run playsound entity.firework_rocket.launch block @a ~ ~ ~ 1 0
execute as @e[tag=i8] at @s run scoreboard players set @s gtimer 1
execute as @e[tag=i8air] at @s run playsound entity.chicken.egg block @a ~ ~ ~ 1 0
execute as @e[tag=i8] at @s run playsound block.note_block.pling block @a[scores={place=1}] ~ ~ ~ 6 2
execute as @e[tag=i8] at @s run function scripts:items/seeker
execute as @e[tag=i8] at @s unless entity @a[scores={place=1}] run kill @s



kill @e[tag=item]