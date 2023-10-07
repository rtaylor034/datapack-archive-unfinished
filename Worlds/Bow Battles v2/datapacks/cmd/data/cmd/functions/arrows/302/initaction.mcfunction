
#CALLED FROM ARROW
tag @s remove init
kill @s
execute as @a[scores={shoot=1..},limit=1,sort=nearest] at @s run function cmd:arrows/302/createchild
