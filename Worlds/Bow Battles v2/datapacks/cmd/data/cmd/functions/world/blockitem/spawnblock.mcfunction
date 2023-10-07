
#SPAWNING
summon falling_block ~ ~ ~ {DropItem:0,Tags:["init","blockitem"],Time:1,BlockState:{Name:"minecraft:barrier"}}

#BLOCKSTATE
data modify entity @e[type=falling_block,tag=init,limit=1,sort=nearest] BlockState.Name set from entity @s Item.id
kill @e[type=falling_block,tag=init,limit=1,sort=nearest,nbt={BlockState:{Name:"minecraft:sand"}}]

#MOTION
execute store result entity @e[type=falling_block,tag=init,limit=1,sort=nearest] Motion[0] double .0000001 run data get entity @s Motion[0] 50000000
execute store result entity @e[type=falling_block,tag=init,limit=1,sort=nearest] Motion[1] double .0000001 run data get entity @s Motion[1] 40000000
execute store result entity @e[type=falling_block,tag=init,limit=1,sort=nearest] Motion[2] double .0000001 run data get entity @s Motion[2] 50000000

#TAGS
tag @e[type=falling_block,tag=init,limit=1,sort=nearest] remove init

#KILL
kill @s
