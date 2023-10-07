
#[DEPRICATED]

#RAY
scoreboard players add @s gtimer 1

execute at @s run tp @s ^ ^ ^.2

execute at @s unless block ^ ^ ^.2 #gconstruct:placepass run function gconstruct:block/check
execute as @s[scores={gtimer=25..}] at @s run tag @s add die

kill @s[tag=die]
execute as @s[tag=!die] at @s run function gconstruct:block/ray
