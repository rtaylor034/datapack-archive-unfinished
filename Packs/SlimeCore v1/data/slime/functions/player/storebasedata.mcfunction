
#CALL: firstjoin
#CONTEXT: freeBlock position, @s

setblock ~ ~ ~ minecraft:barrel
loot replace block ~ ~ ~ container.0 loot slime:player/head

function slime:player/tracker/find/run
data modify entity @e[type=marker,tag=slime-foundtracker,limit=1,sort=nearest] data.playerName set from block ~ ~ ~ Items[0].tag.SkullOwner.Name
data modify entity @e[type=marker,tag=slime-foundtracker,limit=1,sort=nearest] data.UUID set from entity @s UUID

function slime:player/tracker/unfind/run
setblock ~ ~ ~ bedrock
