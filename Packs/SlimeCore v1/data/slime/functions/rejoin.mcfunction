

#USERNAME CONTINUITY

#find a matching uuid tracker
tag @s add _slime-uuidmatch
execute as @e[type=marker,tag=slime-tracker,tag=!slime-reset-tracker] run function slime:sub/registration/finduuid
tag @s remove _slime-uuidmatch

#find matching playerid tracker
function slime:player/tracker/find/run

#if playerid/uuid mismatch, initiate register
execute if entity @e[type=marker,tag=slime-foundtracker] unless entity @e[type=marker,tag=_slime-truetracker] run function slime:sub/registration/register

tag @e[type=marker] remove _slime-truetracker
function slime:player/tracker/unfind/run


#RESET
scoreboard players operation trackfind.id slime_var = @s slime_playerid
execute as @e[type=minecraft:marker,tag=slime-reset-tracker] if score @s slime_playerid = trackfind.id slime_var run tag @s add _slime-foundreset
execute as @e[type=minecraft:marker,tag=!slime-reset-tracker,tag=slime-tracker] if score @s slime_playerid = trackfind.id slime_var run tag @s add _slime-foundduplicate
scoreboard players reset trackfind.id slime_var

execute if entity @e[type=marker,tag=_slime-foundreset] unless entity @e[type=marker,tag=_slime-foundduplicate] run function slime:sub/registration/register

tag @e[type=marker] remove _slime-foundduplicate
kill @e[type=marker,tag=_slime-foundreset]

scoreboard players reset @s slime_rejoin
