
#SPAWN
summon item ~ ~.5 ~ {CustomNameVisible:1,Tags:["gcsiesitem","cmd"],PickupDelay:99999,NoGravity:1,Invulnerable:1,Item:{id:"minecraft:slime_ball",Count:1}}
execute positioned ~ ~.5 ~ run data modify entity @e[type=item,limit=1,sort=nearest,tag=gcsiesitem] Item.id set from block ~ ~-.5 ~ Items[{Slot:7b}].tag.siesItem.id
execute positioned ~ ~.5 ~ run data modify entity @e[type=item,limit=1,sort=nearest,tag=gcsiesitem] Item.tag set from block ~ ~-.5 ~ Items[{Slot:7b}].tag.siesItem.tag
execute positioned ~ ~.5 ~ run data merge entity @e[type=item,limit=1,sort=nearest,tag=gcsiesitem] {Item:{tag:{gcSiesDisplay:1}}}

function gconstruct:sies/displaycount
#TAG
tag @s add gcsiesid
