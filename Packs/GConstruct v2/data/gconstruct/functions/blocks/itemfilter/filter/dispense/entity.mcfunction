
#CALL - blocks/itemfilter/filter/entity
#DESC - called when a filterable item is found
#CONTEXT - Filtered item

#tp
summon item ~ ~-.4 ~ {Tags:["init"],Motion:[0.0,-0.2,0.0],Item:{id:"minecraft:slime_ball",Count:1b}}
data modify entity @e[type=item,limit=1,sort=nearest] Item set from entity @s Item

#vfx
playsound minecraft:block.dispenser.dispense block @a ~ ~ ~ 0.8 1.2


#RESETS
kill @s
tag @e[type=item] remove init
