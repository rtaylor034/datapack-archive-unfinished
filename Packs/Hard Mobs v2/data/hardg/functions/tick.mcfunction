
#FIRSTJOIN
execute as @a[tag=!hardg-joined] at @s run function hardg:firstjoin


#MAIN
execute as @e[type=#hardg:registry] at @s run function hardg:mobs/main
