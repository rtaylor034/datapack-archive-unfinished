

#PRESSURE SCORES
execute as @a[scores={gcon_prtimer=1..3}] at @s unless block ~ ~1 ~ cave_air run scoreboard players remove @s gcon_prtimer 1
execute as @a[scores={gcon_prtimer=0..2}] at @s if block ~ ~1 ~ cave_air run scoreboard players add @s gcon_prtimer 1
execute as @a[predicate=gconstruct:pressure/inlayer1,scores={gcon_prtimer=0}] at @s run effect give @s mining_fatigue 2 0 true
execute as @a[predicate=gconstruct:pressure/inlayer2,scores={gcon_prtimer=0}] at @s run effect give @s mining_fatigue 2 1 true


