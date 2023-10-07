
#CALL - firstjoin
#CONTEXT - @e[tag=slime-tracker,tag=!slime-reset-tracker]

execute as @a[limit=1,tag=_slime-uuidmatch] run data modify storage slime:var finduuid.uuid set from entity @s UUID

execute store result score finduuid.match slime_var run data modify storage slime:var finduuid.uuid set from entity @s data.UUID

execute if score finduuid.match slime_var matches 0 run tag @s add _slime-truetracker

#RESETS
data remove storage slime:var finduuid
scoreboard players reset finduuid.match slime_var
