
#CALL - firstjoin
#DESC - creates a new tracker for this player and kills old tracker
#NOTE - this really should never have to be called past firstjoin, as trackers should never die.


#destroy old tracker
function slime:player/tracker/find/run
kill @e[type=minecraft:marker,tag=slime-foundtracker]

#CREATE
summon marker ~ ~ ~ {Tags:["slime-tracker","_slime-init"],CustomName:'{"text":"(SlimeCore) Player Tracker","color":"green"}'}
data modify entity @e[type=marker,tag=_slime-init,limit=1] Pos set from storage slime:controls freeBlock

#playerid transfer
scoreboard players operation @e[type=minecraft:marker,tag=_slime-init] slime_playerid = @s slime_playerid



#RESETS
scoreboard players reset id slime_var
tag @e[type=minecraft:marker] remove _slime-init
