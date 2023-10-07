

#SCORE AND NEGATIVE TAG
execute store result score @s rot1 run data get entity @s Rotation[0] 100
execute store result score @s rot2 run data get entity @s Rotation[1] 100

execute store result score math randmax run scoreboard players get @s gtimer2

execute if predicate cmd:halfchance run tag @s add neg1
execute if predicate cmd:halfchance run tag @s add neg2

function cmd:math/random

execute as @s[tag=!neg1] at @s run scoreboard players operation @s rot1 += math mathrand
execute as @s[tag=neg1] at @s run scoreboard players operation @s rot1 -= math mathrand

function cmd:math/random

execute as @s[tag=!neg2] at @s run scoreboard players operation @s rot2 += math mathrand
execute as @s[tag=neg2] at @s run scoreboard players operation @s rot2 -= math mathrand

execute store result entity @s Rotation[0] float .01 run scoreboard players get @s rot1
execute store result entity @s Rotation[1] float .01 run scoreboard players get @s rot2

execute as @s[tag=neg2] run tag @s remove neg2
execute as @s[tag=neg1] run tag @s remove neg1




