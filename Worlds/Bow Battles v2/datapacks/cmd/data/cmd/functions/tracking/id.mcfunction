
#\Child function of assignids\

execute as @a[tag=needid] at @s run scoreboard players add @s playerid 1
execute as @a[tag=needid,sort=random,limit=1] at @s run tag @s remove needid
execute if entity @a[tag=needid] run function cmd:tracking/id







