#converts this item to a block

execute align xyz run summon minecraft:falling_block ~.5 ~ ~.5 {Tags:["gcontarget","gconbpblock"],Time:1,BlockState:{Name:"minecraft:stone"}}
data modify entity @e[type=minecraft:falling_block,tag=gcontarget,limit=1,sort=nearest] BlockState.Name set from entity @s Item.id
data modify entity @e[type=minecraft:falling_block,tag=gcontarget,limit=1,sort=nearest] BlockState.Name set from entity @s Item.id

tag @e[type=minecraft:falling_block] remove gcontarget
kill @s
