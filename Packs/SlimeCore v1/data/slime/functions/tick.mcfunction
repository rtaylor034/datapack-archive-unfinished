
#FIRSTJOIN
execute as @a at @s unless score @s slime_joined matches 1.. run function slime:firstjoin


#MAINS
execute as @a at @s run function slime:player/main
