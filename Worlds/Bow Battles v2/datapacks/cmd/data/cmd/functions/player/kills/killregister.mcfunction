

execute as @s[scores={enemykills=1..}] at @s run function cmd:player/kills/killenemy
execute as @s[scores={allykills=1..}] at @s run function cmd:player/kills/killally

scoreboard players remove @s[scores={allykills=1..}] allykills 1
scoreboard players remove @s[scores={enemykills=1..}] enemykills 1







