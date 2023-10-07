tag @s[tag=i8air] remove i8air
tag @s[tag=i8block] remove i8block

execute if block ~ ~ ~ air run tag @s add i8air
execute unless block ~ ~ ~ air run tag @s add i8block
execute positioned ~ ~-1 ~ run tp @s ~ ~ ~ facing entity @e[scores={place=1},limit=1,sort=nearest]
tp @s[tag=i8air] ^ ^ ^.5
tp @s[tag=i8block] ^ ^ ^1
execute as @s[tag=i8air] run particle smoke ^ ^ ^-.1 0 0 0 0.05 1 force
execute as @s[tag=i8air] run particle cloud ~ ~ ~ 0 0 0 0 1 force
execute as @s[tag=i8air] at @s unless block ~ ~ ~ air run particle dragon_breath ^ ^ ^-.4 0.1 0.1 0.1 0.05 130 force
execute as @s[tag=i8air] at @s unless block ~ ~ ~ air run particle portal ^ ^ ^-.4 0.1 0.1 0.1 0.5 100
execute as @s[tag=i8air] at @s unless block ~ ~ ~ air run playsound entity.enderman.teleport block @a ~ ~ ~ 1.2 1.5
execute as @s[tag=i8block] at @s if block ~ ~ ~ air run particle dragon_breath ^ ^ ^-.2 0.1 0.1 0.1 0.05 130 force
execute as @s[tag=i8block] at @s if block ~ ~ ~ air run particle portal ^ ^ ^-.2 0.1 0.1 0.1 0.5 100
execute as @s[tag=i8block] at @s if block ~ ~ ~ air run playsound entity.enderman.teleport block @a ~ ~ ~ 1.2 1.5
execute as @s[scores={gtimer=5}] positioned ~ ~-1 ~ if entity @a[scores={place=1},distance=0..1.3] run tag @s add i8d
execute as @s[tag=i8d] run playsound entity.generic.explode block @a ~ ~ ~ 2 1.5
execute as @s[tag=i8d] run playsound entity.generic.explode block @a ~ ~ ~ 2 2
execute as @s[tag=i8d] run particle item minecart ~ ~ ~ 0.3 0.3 0.3 0.5 200
execute as @s[tag=i8d] run particle cloud ~ ~ ~ 0.3 0.3 0.3 00.5 150
execute as @s[tag=i8d] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.5 100
execute as @s[tag=i8d] run scoreboard players add @e[tag=mc,distance=0..2] stuntimer 60
execute as @s[tag=i8d] run scoreboard players add @e[tag=mc,distance=0..2] slowtimer 60
execute as @s[tag=i8d] run kill @s




scoreboard players add @s gtimer 1
execute as @s[scores={gtimer=1..5}] at @s run function scripts:items/seeker





