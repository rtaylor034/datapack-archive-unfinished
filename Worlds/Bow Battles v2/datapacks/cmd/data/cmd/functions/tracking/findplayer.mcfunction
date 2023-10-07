
tag @s add search
execute as @a at @s if score @s playerid = @e[tag=search,limit=1] ownerid run tag @s add found
tag @s remove search







