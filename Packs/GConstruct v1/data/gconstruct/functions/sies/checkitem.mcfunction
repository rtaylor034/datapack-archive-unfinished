
#STORE
execute positioned ~ ~.5 ~ run data modify storage gconstruct:sies/storeitem Item.id set from entity @e[type=item,limit=1,sort=nearest,tag=gcsiesitem] Item.id
execute positioned ~ ~.5 ~ run data modify storage gconstruct:sies/storeitem Item.tag set from entity @e[type=item,limit=1,sort=nearest,tag=gcsiesitem] Item.tag
data remove storage gconstruct:sies/storeitem Item.tag.gcSiesDisplay

#CHECK
execute store success score @s gcon_success run data modify storage gconstruct:sies/storeitem Item.id set from block ~ ~ ~ Items[{Slot:3b}].id
execute as @s[scores={gcon_success=0}] at @s store success score @s gcon_success run data modify storage gconstruct:sies/storeitem Item.tag set from block ~ ~ ~ Items[{Slot:3b}].tag

execute as @s[scores={gcon_success=0}] at @s run function gconstruct:sies/store