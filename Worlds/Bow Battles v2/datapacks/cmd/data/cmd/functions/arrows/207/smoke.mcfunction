
#SCORES
scoreboard players add @s gtimer 1

#PARTICLE
particle explosion ~ ~ ~ 2 2 2 1.5 33 force

#KILL
execute as @s[scores={gtimer=110..}] at @s run playsound block.fire.extinguish block @a ~ ~ ~ 0.8 1.4
kill @s[scores={gtimer=110..}]
