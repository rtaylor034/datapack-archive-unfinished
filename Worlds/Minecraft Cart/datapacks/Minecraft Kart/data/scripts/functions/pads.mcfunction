execute as @a at @s store result score @s rot2 run data get entity @s Rotation[1] 1

execute as @e[type=minecart,tag=mc] unless score @s speed matches 0..5 at @s run scoreboard players set @s speed 1
execute as @e[type=minecart,tag=mc,scores={moving=1,boost=0..20}] at @s if block ~ ~-0.5 ~ diamond_block run playsound entity.wither.shoot master @p ~ ~ ~ 0.5 1.2
execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ piston run playsound block.piston.extend master @p ~ ~ ~ 0.5 1
execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ piston run particle explosion ^ ^0.1 ^-1 0.5 0.1 0.5 0.1 20 force
execute as @e[type=minecart,tag=mc,scores={moving=1,boost=0..5}] at @s if block ~ ~-0.5 ~ gold_block run playsound entity.wither.shoot master @p ~ ~ ~ 0.5 1.5
execute as @e[type=minecart,tag=mc,scores={moving=1,boost=0..5}] at @s if block ~ ~-0.5 ~ gold_block run scoreboard players set @s boost 16
execute as @e[type=minecart,tag=mc,scores={moving=1,boost=0..20}] at @s if block ~ ~-0.5 ~ diamond_block run scoreboard players set @s boost 31
execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ diamond_block run particle effect ^ ^0.5 ^-2 0.5 0.5 0.5 1 40 force
execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ gold_block run particle effect ^ ^0.5 ^-2 0.5 0.5 0.5 1 20 force

execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ magenta_glazed_terracotta run playsound entity.firework_rocket.launch master @a ~ ~ ~ 1.5 2
execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ magenta_glazed_terracotta run particle firework ~ ~.5 ~ 0 0 0 0.5 60 force

execute as @e[type=minecart,tag=mc,scores={moving=0},nbt={OnGround:1b}] at @s unless block ~ ~-0.5 ~ magenta_glazed_terracotta unless block ~ ~-0.5 ~ piston if block ~ ~-1.5 ~ stone_stairs[facing=west] run tp @s ~ ~ ~ facing ~-1 ~ ~
execute as @e[type=minecart,tag=mc,scores={moving=0},nbt={OnGround:1b}] at @s unless block ~ ~-0.5 ~ magenta_glazed_terracotta unless block ~ ~-0.5 ~ piston if block ~ ~-1.5 ~ stone_stairs[facing=east] run tp @s ~ ~ ~ facing ~1 ~ ~
execute as @e[type=minecart,tag=mc,scores={moving=0},nbt={OnGround:1b}] at @s unless block ~ ~-0.5 ~ magenta_glazed_terracotta unless block ~ ~-0.5 ~ piston if block ~ ~-1.5 ~ stone_stairs[facing=north] run tp @s ~ ~ ~ facing ~ ~ ~-1
execute as @e[type=minecart,tag=mc,scores={moving=0},nbt={OnGround:1b}] at @s unless block ~ ~-0.5 ~ magenta_glazed_terracotta unless block ~ ~-0.5 ~ piston if block ~ ~-1.5 ~ stone_stairs[facing=south] run tp @s ~ ~ ~ facing ~ ~ ~1
execute as @e[type=minecart,tag=mc,scores={moving=0},nbt={OnGround:1b}] at @s unless block ~ ~-0.5 ~ magenta_glazed_terracotta unless block ~ ~-0.5 ~ piston run scoreboard players set @s moving 1
kill @e[tag=jmc,nbt={OnGround:1b}]

execute as @e[type=minecart,tag=mc,scores={moving=0,drift=0}] at @s if entity @a[distance=0..0.5] run execute as @p at @s if score @s rot2 matches -90..-80 run particle happy_villager ~ ~ ~ 1 1 1 1 100 force
execute as @e[type=minecart,tag=mc,scores={moving=0,drift=0}] at @s if entity @a[distance=0..0.5] run execute as @p at @s if score @s rot2 matches -90..-80 run playsound entity.player.levelup master @a ~ ~ ~ 0.5 1.5
execute as @e[type=minecart,tag=mc,scores={moving=0,drift=0}] at @s if entity @a[distance=0..0.5] run execute as @p at @s if score @s rot2 matches -90..-80 run scoreboard players set @e[tag=mc,limit=1,sort=nearest,distance=0..0.5] boost 20
execute as @e[type=minecart,tag=mc,scores={moving=0,drift=0}] at @s if entity @a[distance=0..0.5] run execute as @p at @s if score @s rot2 matches -90..-80 run scoreboard players set @e[tag=mc,limit=1,sort=nearest,distance=0..0.5] drift 30
execute as @e[type=minecart,tag=mc,scores={moving=0,drift=30}] at @s run particle happy_villager ~ ~ ~ 1 1 1 1 2 force

execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ magenta_glazed_terracotta run scoreboard players set @s drift 0
execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ magenta_glazed_terracotta run scoreboard players set @s boost 0
execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ magenta_glazed_terracotta run scoreboard players set @s moving 0
execute as @e[type=minecart,tag=mc,scores={moving=0}] at @s if block ~ ~-0.2 ~ magenta_glazed_terracotta[facing=east] run summon armor_stand ~ ~.5 ~ {Tags:["jmc"],Invisible:1,Motion:[-4.0,1.0,0.0],Silent:1}
execute as @e[type=minecart,tag=mc,scores={moving=0}] at @s if block ~ ~-0.2 ~ magenta_glazed_terracotta[facing=west] run summon armor_stand ~ ~.5 ~ {Tags:["jmc"],Invisible:1,Motion:[4.0,1.0,0.0],Silent:1}
execute as @e[type=minecart,tag=mc,scores={moving=0}] at @s if block ~ ~-0.2 ~ magenta_glazed_terracotta[facing=north] run summon armor_stand ~ ~.5 ~ {Tags:["jmc"],Invisible:1,Motion:[0.0,1.0,4.0],Silent:1}
execute as @e[type=minecart,tag=mc,scores={moving=0}] at @s if block ~ ~-0.2 ~ magenta_glazed_terracotta[facing=south] run summon armor_stand ~ ~.5 ~ {Tags:["jmc"],Invisible:1,Motion:[0.0,1.0,-4.0],Silent:1}

execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ piston run scoreboard players set @s drift 1
execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ piston run scoreboard players set @s boost 0
execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ piston run scoreboard players set @s moving 0
execute as @e[type=minecart,tag=mc,scores={moving=0}] at @s if block ~ ~-0.2 ~ piston if block ~ ~-1.2 ~ purpur_stairs[facing=west] run summon armor_stand ~ ~.5 ~ {Tags:["jmc"],Invisible:1,Motion:[-1.0,1.5,0.0],Silent:1}
execute as @e[type=minecart,tag=mc,scores={moving=0}] at @s if block ~ ~-0.2 ~ piston if block ~ ~-1.2 ~ purpur_stairs[facing=east] run summon armor_stand ~ ~.5 ~ {Tags:["jmc"],Invisible:1,Motion:[1.0,1.5,0.0],Silent:1}
execute as @e[type=minecart,tag=mc,scores={moving=0}] at @s if block ~ ~-0.2 ~ piston if block ~ ~-1.2 ~ purpur_stairs[facing=south] run summon armor_stand ~ ~.5 ~ {Tags:["jmc"],Invisible:1,Motion:[0.0,1.5,1.0],Silent:1}
execute as @e[type=minecart,tag=mc,scores={moving=0}] at @s if block ~ ~-0.2 ~ piston if block ~ ~-1.2 ~ purpur_stairs[facing=north] run summon armor_stand ~ ~.5 ~ {Tags:["jmc"],Invisible:1,Motion:[0.0,1.5,-1.0],Silent:1}

execute as @e[type=minecart,tag=mc,scores={moving=1,speed=0}] at @s if block ~ ~-0.5 ~ redstone_block run playsound block.beacon.activate master @p ~ ~ ~ 5 2
execute as @e[type=minecart,tag=mc,scores={moving=1,speed=2}] at @s if block ~ ~-0.5 ~ redstone_block run playsound block.beacon.deactivate master @p ~ ~ ~ 5 2
execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ redstone_block run scoreboard players set @s speed 1
execute as @e[type=minecart,tag=mc,scores={moving=1,speed=0..1}] at @s if block ~ ~-0.5 ~ emerald_block run playsound block.beacon.activate master @p ~ ~ ~ 5 2
execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ emerald_block run scoreboard players set @s speed 2
execute as @e[type=minecart,tag=mc,scores={moving=1,speed=1..2}] at @s if block ~ ~-0.5 ~ lapis_block run playsound block.beacon.deactivate master @p ~ ~ ~ 5 2
execute as @e[type=minecart,tag=mc,scores={moving=1}] at @s if block ~ ~-0.5 ~ lapis_block run scoreboard players set @s speed 0

execute as @e[tag=jmc] at @s run particle effect ~ ~ ~ 0.5 0.5 0.5 1 3 force

execute as @e[type=minecart,tag=mc,scores={moving=0}] at @s run tp @s @e[limit=1,sort=nearest,distance=0..6,tag=jmc]

#SLIME
execute as @e[tag=offroad] at @s run tag @s remove offroad
execute as @e[tag=mc,scores={moving=1}] at @s if block ~ ~-1 ~ slime_block run tag @s add offroad
execute as @e[tag=mc,scores={moving=1}] at @s if block ~ ~-2 ~ slime_block run tag @s add offroad

