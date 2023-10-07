#SPAWNER
execute as @e[tag=ibs] at @s run data merge entity @s {Duration:200000}
execute as @e[tag=ibs] at @s positioned ~ ~0.5 ~ unless entity @e[tag=ib,distance=0..0.5] run scoreboard players add @s gtimer 1
execute as @e[tag=ibs,scores={gtimer=100}] at @s run summon end_crystal ~ ~0.5 ~ {Tags:["ib"],Invulnerable:1,ShowBottom:0b}
execute as @e[tag=ibs,scores={gtimer=100}] at @s run scoreboard players set @s gtimer 0

#ITEM BOX
execute as @e[tag=ib] at @s run particle enchant ~ ~0.7 ~ 0.2 0.2 0.2 0 5 force
execute as @a at @s positioned ~ ~0.5 ~ if entity @e[tag=ib,distance=0..1.3] run tag @s add ibh
execute as @a at @s positioned ~ ~0.5 ~ unless entity @e[tag=ib,distance=0..1.3] run tag @s remove ibh
execute as @a[tag=ibh] at @s positioned ~ ~0.5 ~ if entity @e[tag=ib,distance=0..1.3] run playsound block.glass.break master @a ~ ~ ~ 1 0.8
execute as @a[tag=ibh] at @s positioned ~ ~0.5 ~ if entity @e[tag=ib,distance=0..1.3] run execute as @e[tag=ib,distance=0..1.3] at @s run particle item glass ~ ~1 ~ 0.5 0.5 0.5 0.25 300 
execute as @a[tag=ibh] at @s positioned ~ ~0.5 ~ if entity @e[tag=ib,distance=0..1.3] run execute as @e[tag=ib,distance=0..1.3] at @s run particle item iron_bars ~ ~1 ~ 0.5 0.5 0.5 0.25 100 force
execute as @a[tag=ibh] at @s positioned ~ ~0.5 ~ if entity @e[tag=ib,distance=0..1.3] run execute as @e[tag=ib,distance=0..1.3] at @s run particle item purple_stained_glass ~ ~1 ~ 0.3 0.3 0.3 0.15 25 force
execute as @a[tag=ibh] at @s positioned ~ ~0.5 ~ if entity @e[tag=ib,distance=0..1.3] run execute as @e[tag=ib,distance=0..1.3] at @s run particle item magenta_stained_glass ~ ~1 ~ 0.3 0.3 0.3 0.15 25 force
execute as @a[tag=ibh] at @s positioned ~ ~0.5 ~ if entity @e[tag=ib,distance=0..1.3] run scoreboard players set @s iroll 29
execute as @a[tag=ibh] at @s positioned ~ ~0.5 ~ if entity @e[tag=ib,distance=0..1.3] run scoreboard players set @s irtimer1 0
execute as @a[tag=ibh] at @s positioned ~ ~0.5 ~ if entity @e[tag=ib,distance=0..1.3] run scoreboard players set @s irtimer2 1
execute as @a[tag=ibh] at @s positioned ~ ~0.5 ~ if entity @e[tag=ib,distance=0..1.3] run kill @e[tag=ib,distance=0..1.3]

#ITEM ROLL
execute as @a[scores={iroll=2..100,irtimer1=0,irtimer2=1}] at @s run playsound block.note_block.xylophone block @s ~ ~ ~ 0.5 0.6
execute as @a[scores={iroll=2..100,irtimer1=0,irtimer2=2}] at @s run playsound block.note_block.xylophone block @s ~ ~ ~ 0.5 0.7
execute as @a[scores={iroll=2..100,irtimer1=0,irtimer2=3}] at @s run playsound block.note_block.xylophone block @s ~ ~ ~ 0.5 0.8
execute as @a[scores={iroll=2..100,irtimer1=0,irtimer2=4}] at @s run playsound block.note_block.xylophone block @s ~ ~ ~ 0.5 0.9
execute as @a[scores={iroll=1,irtimer1=0}] at @s run playsound block.note_block.xylophone block @s ~ ~ ~ 0.5 1.2
execute as @a[scores={iroll=1..100,irtimer1=0}] at @s run loot replace entity @s hotbar.8 loot scripts:items



execute as @a[scores={iroll=1..100,irtimer1=0,irtimer2=1..4}] at @s run scoreboard players add @s irtimer2 1
execute as @a[scores={iroll=1..100,irtimer1=0,irtimer2=5}] at @s run scoreboard players set @s irtimer2 1
execute as @a[scores={iroll=1..100,irtimer1=0}] at @s run scoreboard players remove @s iroll 1
execute as @a[scores={irtimer1=0}] at @s run scoreboard players set @s irtimer1 2
execute as @a[scores={irtimer1=1..2}] at @s run scoreboard players remove @s irtimer1 1










