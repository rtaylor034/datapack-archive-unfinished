
#Called when sies is broken and does not have the display item summoned

summon item ~ ~ ~ {Tags:["gcsiesitem","gcsiesforce"],PickupDelay:999999s,Invulnerable:1b,NoGravity:1,Item:{id:"minecraft:slime_ball",Count:1b}}
execute as @e[type=item,distance=0..1,nbt={Item:{tag:{gcGUI:1}}}] at @s if data entity @s Item.tag.siesItem run tag @s add gcsiesfditem
execute as @e[type=item,tag=gcsiesitem,limit=1,sort=nearest] at @s run data modify entity @s Item set from entity @e[type=item,distance=0..1,limit=1,tag=gcsiesfditem,sort=nearest] Item.tag.siesItem
