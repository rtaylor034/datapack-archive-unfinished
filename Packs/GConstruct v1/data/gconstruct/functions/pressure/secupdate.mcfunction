

#PRESSURE SCORES
execute as @a[predicate=!gconstruct:pressure/inanylayer,scores={gcon_prtimer=0..2}] at @s run scoreboard players add @s gcon_prtimer 1

execute as @a[predicate=gconstruct:pressure/inanylayer] at @s run function gconstruct:pressure/inlayer