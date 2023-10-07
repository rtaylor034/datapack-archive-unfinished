
#ITEM CLEARS
kill @e[type=item,nbt={Item:{tag:{killground:1}}}]

#BLOCK ITEMS
#\make sure to add tag "notblock" to items that are not flying blocks\
#\this is added automatically if "child" tag is added\
execute as @e[type=item,tag=!notblock] at @s run function cmd:world/blockitem/check
execute as @e[type=falling_block,tag=blockitem] at @s run function cmd:world/blockitem/base


#PASSIVE EFFECTS
effect give @a saturation 100000 10 true


