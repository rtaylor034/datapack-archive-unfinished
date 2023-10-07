
#REMOVE
scoreboard players operation @s gcon_count -= @s gcon_siesout

#OUTPUT
execute store result score @s gcon_siesadd run data get block ~ ~ ~ Items[{Slot:5b}].Count
data modify block ~ ~ ~ Items append value {Slot:5b,id:"minecraft:slime_ball",Count:1,tag:{}} 

execute positioned ~ ~.5 ~ run data modify block ~ ~-.6 ~ Items[{Slot:5b}].id set from entity @e[type=item,limit=1,sort=nearest,tag=gcsiesitem,distance=0..0.5] Item.id
execute positioned ~ ~.5 ~ run data modify block ~ ~-.6 ~ Items[{Slot:5b}].tag set from entity @e[type=item,limit=1,sort=nearest,tag=gcsiesitem,distance=0..0.5] Item.tag
data remove block ~ ~ ~ Items[{Slot:5b}].tag.gcSiesDisplay
scoreboard players operation @s gcon_siesout += @s gcon_siesadd

execute store result block ~ ~ ~ Items[{Slot:5b}].Count int 1 run scoreboard players get @s gcon_siesout

function gconstruct:sies/displaycount