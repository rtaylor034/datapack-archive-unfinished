
#FIRSTJOIN
execute as @a[tag=!gconstructjoined] at @s run function gconstruct:firstjoin

#BLOCKS
#{

#CRAFT
execute as @e[type=item,nbt={Item:{id:"minecraft:piston",Count:1b}}] at @s if block ~ ~-0.1 ~ crafting_table align xyz positioned ~.5 ~-.5 ~.5 run function gconstruct:constructor/spawn
execute as @e[type=area_effect_cloud,tag=gconst] at @s if entity @a[distance=0..15] run function gconstruct:constructor/base

##RAYCAST PLACING [DEPRICATED]
##execute as @a[scores={gcon_click=1..}] at @s as @s[nbt={SelectedItem:{tag:{gcblock:1}}}] run function gconstruct:block/place

#BLOCK PLACING
execute as @e[type=minecraft:area_effect_cloud,tag=gcblockp] at @s run function gconstruct:block/check

#SIES ITEM
execute as @e[type=item,tag=gcsiesitem] at @s run function gconstruct:sies/item/base

#MAINS
execute as @e[type=minecraft:area_effect_cloud,tag=gcblock] at @s run function gconstruct:block/blockbase

#}

##PRESSURE
##execute as @e[type=tnt,predicate=gconstruct:pressure/inanylayer] at @s run function gconstruct:pressure/tnt/check
##execute as @e[type=area_effect_cloud,tag=gctnt] at @s run function gconstruct:pressure/tnt/gctnt

#AFTER
kill @e[type=item,nbt={Item:{tag:{gcGUI:1}}}]
clear @a[gamemode=!creative] clock{gcGUI:1}

#SNEAK
#"gcholdsneak" is added after the first tick of sneaking
tag @a[scores={gcon_sneak=0}] remove gcholdsneak
tag @a[scores={gcon_sneak=1..}] add gcholdsneak
scoreboard players set @a[scores={gcon_sneak=1..}] gcon_sneak 0
