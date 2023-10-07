
#FIRSTJOIN
execute as @a[tag=!gcon-joined] at @s run function gconstruct:firstjoin


#MAINS
execute as @e[type=marker,tag=gcon-block] at @s run function gconstruct:blocks/main
execute as @a at @s run function gconstruct:player/main


#gui item kill
kill @e[type=item,nbt={Item:{tag:{gconstruct:{gui:1}}}}]
