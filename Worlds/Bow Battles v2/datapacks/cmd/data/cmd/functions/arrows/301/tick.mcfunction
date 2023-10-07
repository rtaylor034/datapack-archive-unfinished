
#VFX
execute as @s[scores={gtimer2=35..}] at @s run playsound block.note_block.hat block @a ~ ~ ~ 1 1.3
execute as @s[scores={gtimer2=28..34}] at @s run playsound block.note_block.hat block @a ~ ~ ~ 1 1.4
execute as @s[scores={gtimer2=20..27}] at @s run playsound block.note_block.hat block @a ~ ~ ~ 1 1.5
execute as @s[scores={gtimer2=10..19}] at @s run playsound block.note_block.hat block @a ~ ~ ~ 1 1.9
execute as @s[scores={gtimer2=1..9}] at @s run playsound block.note_block.snare block @a ~ ~ ~ 1 2
execute as @s[scores={gtimer2=1..9}] at @s run playsound block.note_block.pling block @a ~ ~ ~ 1 2

particle lava ~ ~.2 ~ 0 0 0 1 1 force

execute as @s[scores={gtimer2=0..19}] at @s run summon falling_block ~ ~ ~ {Time:599,NoGravity:1,BlockState:{Name:"minecraft:tnt"},DropItem:0b}
#SCORES
scoreboard players remove @s gtimer2 1
scoreboard players set @s gtimer 0
