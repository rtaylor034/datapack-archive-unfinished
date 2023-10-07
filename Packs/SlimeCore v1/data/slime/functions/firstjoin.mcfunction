
#USERNAME CONTINUITY
#find a matching uuid tracker
tag @s add _slime-uuidmatch
execute as @e[type=marker,tag=slime-tracker,tag=!slime-reset-tracker] run function slime:sub/registration/finduuid
tag @s remove _slime-uuidmatch

#If matching uuid exists, reassign
execute if entity @e[type=marker,tag=_slime-truetracker] run function slime:sub/registration/reassign

#If no uuid exists, register
execute unless entity @e[type=marker,tag=_slime-truetracker] run function slime:sub/registration/register

scoreboard players set @s slime_joined 1

tag @e[type=marker] remove _slime-truetracker
