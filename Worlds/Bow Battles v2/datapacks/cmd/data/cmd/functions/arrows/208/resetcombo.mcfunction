
#resets combo
execute as @s[scores={208combo=1..}] run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 0
scoreboard players set @s 208combo 0
