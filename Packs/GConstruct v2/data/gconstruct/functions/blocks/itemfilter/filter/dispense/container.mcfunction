
#CALL - blocks/itemfilter/filter/container
#DESC - called when a filterable item is found
#CONTEXT - this

#create item
summon item ~ ~-.4 ~ {Tags:["init"],Motion:[0.0,-0.2,0.0],Item:{id:"minecraft:slime_ball",Count:1b}}
data modify entity @e[type=item,limit=1,sort=nearest] Item set from storage slime:out cycleto.out[0]

#VFX
playsound minecraft:block.dispenser.dispense block @a ~ ~ ~ 0.8 1.2

#remove from container
data remove storage slime:out cycleto.out[0]
data modify block ~ ~1 ~ Items set from storage slime:out cycleto.out


#RESETS
tag @e[type=item] remove init
