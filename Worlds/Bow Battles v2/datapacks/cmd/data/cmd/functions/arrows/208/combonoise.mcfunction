

#COMBO SOUNDS
execute as @s[scores={208combo=1}] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.06
execute as @s[scores={208combo=2}] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.19
execute as @s[scores={208combo=3}] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.33
execute as @s[scores={208combo=4}] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.41
execute as @s[scores={208combo=5}] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.58
execute as @s[scores={208combo=6..}] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.78
execute as @s[scores={208combo=6..}] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.19

#EFFECT
execute anchored eyes run particle note ^ ^.5 ^1 0 0 0 1 1
