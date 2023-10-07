
#RESETS ALL PLAYER DATA IN RELATION TO SLIMECORE
#As if all players just joined for the first time


#PLAYERID
scoreboard players set maxid slime_var 0

#MESSAGE
tellraw @a {"color":"red","text":"*ALL SLIMECORE DATA HAS BEEN ERASED AND RESET*"}


#RESET TRACKERS
tag @e[type=minecraft:marker,tag=slime-tracker] add slime-reset-tracker
execute as @a at @s run function slime:rejoin
