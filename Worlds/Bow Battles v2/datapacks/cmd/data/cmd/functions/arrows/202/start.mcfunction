
#DATA
data merge entity @s {damage:1.1d}

execute store result entity @s Motion[0] double 0.00000001 run data get entity @s Motion[0] 150000000
execute store result entity @s Motion[1] double 0.00000001 run data get entity @s Motion[1] 150000000
execute store result entity @s Motion[2] double 0.00000001 run data get entity @s Motion[2] 150000000



#EFFECT
particle enchanted_hit ~ ~ ~ 0 0 0 0.5 5 force

playsound entity.arrow.shoot player @a ~ ~ ~ 0.8 2
