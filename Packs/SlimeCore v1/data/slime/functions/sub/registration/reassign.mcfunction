
#CALL - firstjoin
#CONTEXT - @s

#message
tellraw @s ["",{"text":"[Slime Core]","bold":true,"color":"light_purple"},{"text":" Your player ID has been successfully reassigned, your SlimeCore player data has been conserved.","color":"gray"}]

#reassign id
scoreboard players operation @s slime_playerid = @e[type=marker,tag=_slime-truetracker,limit=1] slime_playerid

#base data store
summon marker ~ ~ ~ {Tags:["_init"]}
execute as @e[type=marker,tag=_init] run data modify entity @s Pos set from storage slime:controls freeBlock
execute at @e[type=marker,tag=_init] run function slime:player/storebasedata
kill @e[type=marker,tag=_init]
