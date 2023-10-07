
#Called when a container above has a matching item

#ITEM
summon item ~ ~-.8 ~ {Tags:["gconfout"],Motion:[0.0,-0.1,0.0],Item:{id:"minecraft:slime_ball",Count:1b}}
data modify entity @e[type=item,tag=gconfout,limit=1,sort=nearest] Item set from storage gconstruct:filter/container Items[0]
tag @e[type=item,tag=gconfout,limit=1,sort=nearest] remove gconfout

#VFX
playsound minecraft:block.dispenser.dispense block @a ~ ~ ~ 0.3 1.2

#CONTAINER REMOVE
data remove storage gconstruct:filter/container Items[0]
data modify block ~ ~1 ~ Items set from storage gconstruct:filter/container Items
