

playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 0.9 0
particle minecraft:dust_color_transition -.1 0 0 2 -2 0 0 ~ ~1 ~ 0.5 0.5 0.5 1 10 normal
tag @s add hardg-zombie-rage

#knockback resisistance
data modify entity @s Attributes append value {Name:"minecraft:generic.knockback_resistance",Base:0.95}
