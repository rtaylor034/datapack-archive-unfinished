
#CALL - blocks/main
#DESC - Called when this block is destroyed (air is detected)
#CONTEXT - This Entity

#KILLS
#mask
kill @e[type=minecraft:falling_block,tag=gcon-block-mask,distance=..0.5]
#dropped item
execute store success score break.success gcon_var run kill @e[type=item,nbt={Age:0s,PickupDelay:10s},limit=1,sort=nearest,distance=..1]



#SUMMON ITEM
execute if score break.success gcon_var matches 1.. run summon item ~ ~.5 ~ {Motion:[0.0d,0.15d,0.0d],Tags:["init"],PickupDelay:10,Item:{id:"minecraft:slime_ball",Count:1}}

#get item
scoreboard players operation getitem.id gcon_param = @s gcon_blockid
function gconstruct:method/block/getitem/run
data modify entity @e[type=item,tag=init,limit=1,sort=nearest] Item merge from storage gconstruct:out getitem.item


#RESETS
tag @e[type=item] remove init
scoreboard players reset break.success gcon_var

#KILL
kill @s
