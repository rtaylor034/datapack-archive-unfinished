#called when has the tag "gbpactivate" (5 ticks after initial power)
#called from exact center of block

execute positioned ^ ^ ^.8 as @e[type=item,limit=1,sort=nearest,nbt={Age:1s},distance=0..0.4] at @s run function gconstruct:blockplacer/converttoblock






#TAG
tag @s remove gconbpactivate
