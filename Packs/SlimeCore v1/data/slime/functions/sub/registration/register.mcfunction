
#CALL - rejoin
#CONTEXT - @s

tellraw @s ["",{"text":"Slime Core","bold":true,"color":"light_purple"},{"text":" by "},{"text":"GFunction","color":"blue"},{"text":" installed."}]

#PLAYERID
scoreboard players add maxid slime_var 1
scoreboard players operation @s slime_playerid = maxid slime_var

#TRACKER
function slime:player/tracker/create

#base data store
summon marker ~ ~ ~ {Tags:["_init"]}
execute as @e[type=marker,tag=_init] run data modify entity @s Pos set from storage slime:controls freeBlock
execute at @e[type=marker,tag=_init] run function slime:player/storebasedata
kill @e[type=marker,tag=_init]
