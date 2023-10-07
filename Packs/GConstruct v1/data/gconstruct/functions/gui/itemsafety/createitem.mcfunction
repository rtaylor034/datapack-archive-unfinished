
#Gives the item back to the player


execute at @a[distance=0..8,limit=1,sort=nearest] run summon item ~ ~ ~ {Invulnerable:1,Tags:["gcguisitem"],Item:{id:"minecraft:slime_ball",Count:1b}}
data modify entity @e[type=item,tag=gcguisitem,limit=1,sort=nearest] Item set from storage gconstruct:temp/gui/itemsafety foundItem

#FOUNDITEM REMOVE
data remove storage gconstruct:temp/gui/itemsafety foundItem
