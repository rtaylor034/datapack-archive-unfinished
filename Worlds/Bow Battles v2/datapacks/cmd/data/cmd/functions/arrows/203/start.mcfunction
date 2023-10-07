
#DATA
data merge entity @s {damage:4.5d}

execute store result entity @s Motion[0] double 0.00000001 run data get entity @s Motion[0] 60000000
execute store result entity @s Motion[1] double 0.00000001 run data get entity @s Motion[1] 60000000
execute store result entity @s Motion[2] double 0.00000001 run data get entity @s Motion[2] 60000000



#EFFECT
particle enchanted_hit ~ ~ ~ 0 0 0 0.5 5 force

playsound entity.arrow.shoot player @a ~ ~ ~ 0.8 0.8
