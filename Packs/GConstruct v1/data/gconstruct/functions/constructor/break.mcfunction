
#ITEM
loot spawn ~ ~ ~ loot minecraft:blocks/piston
loot spawn ~ ~ ~ loot minecraft:blocks/crafting_table
kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b,tag:{display:{Name:'{"text":"Constructor"}'}}}},limit=1,sort=nearest,distance=0..2]

execute positioned ~ ~-.5 ~ run kill @e[type=falling_block,tag=gcbmask,distance=0..0.1]

playsound entity.horse.armor block @a ~ ~ ~ 1 1.3
kill @s
