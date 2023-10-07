
#SPAWN
execute positioned ~ ~.5 ~ run data modify block ~ ~-.5 ~ Items[{Slot:7b}].tag.siesItem set from entity @e[type=item,limit=1,sort=nearest,tag=gcsiesitem] Item
execute positioned ~ ~.5 ~ run kill @e[type=item,tag=gcsiesitem,distance=0..0.5,sort=nearest,limit=1]

#TAG
tag @s remove gcsiesid

