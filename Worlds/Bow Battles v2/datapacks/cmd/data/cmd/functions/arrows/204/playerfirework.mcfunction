
#\called every tick from child\

scoreboard players add @s gtimer 1

#TP
#{generalvar1} = playerid of victim that is stuck with firework
tag @s add 204search
execute as @a at @s if score @s playerid = @e[tag=204search,limit=1] generalvar1 run tag @s add 204found
tag @s remove 204search

tp @s @a[tag=204found,limit=1,sort=nearest]
tag @a remove 204found

#EFFECTS
execute as @s[scores={gtimer=1}] at @s run playsound entity.creeper.primed player @a ~ ~ ~ 1 2
particle firework ~ ~1 ~ 0.1 0.1 0.1 0.05 1 force

#EXPLODE
execute as @s[scores={gtimer=40}] at @s run tp @s ~ ~1 ~
execute as @s[scores={gtimer=40}] at @s run function cmd:arrows/204/explode
