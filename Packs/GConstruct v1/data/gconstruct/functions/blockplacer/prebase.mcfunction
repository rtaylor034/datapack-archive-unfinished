#called every tick

#BASE
execute if entity @a[distance=0..15] run function gconstruct:blockplacer/base

#ACTIVATE
execute as @s[tag=gconbpactivate] at @s align xyz positioned ~.5 ~.5 ~.5 run function gconstruct:blockplacer/activate

#CHECK ACTIVATED
scoreboard players remove @s[scores={gcon_gtimer=1..}] gcon_gtimer 1
execute as @s[scores={gcon_btriggered=0,gcon_gtimer=1..}] at @s if block ~ ~ ~ minecraft:dropper[triggered=true] run tag @s add gconbpqueue
execute as @s[scores={gcon_btriggered=0,gcon_gtimer=..0}] at @s if block ~ ~ ~ minecraft:dropper[triggered=true] run scoreboard players set @s gcon_gtimer 4
execute as @s[tag=gconbpqueue,scores={gcon_gtimer=..0}] at @s run function gconstruct:blockplacer/queue
execute as @s[scores={gcon_gtimer=1}] at @s run tag @s add gconbpactivate

execute store result score @s gcon_btriggered if block ~ ~ ~ minecraft:dropper[triggered=true]


#HOPPER FIX
#execute positioned ~ ~-1 ~ as @e[type=minecraft:hopper_minecart,distance=0..2] run data merge entity @s {Enabled:0b}

#BREAK
execute unless block ~ ~ ~ dropper run function gconstruct:blockplacer/break
