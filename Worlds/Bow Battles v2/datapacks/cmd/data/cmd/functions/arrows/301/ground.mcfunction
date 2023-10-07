
#GROUND
execute align xyz run tp @s ~.5 ~.1 ~.5
data merge entity @s {Motion:[0.0,0.0,0.0]}

#ARM
scoreboard players remove @s gtimer2 20

#VFX
playsound block.note_block.snare block @a ~ ~ ~ 0.7 1.3
playsound block.grass.break block @a ~ ~ ~ 0.7 1.5
execute at @s run particle block tnt ~ ~.3 ~ 0.2 0.2 0.2 1 10

#TAG
tag @s add grounded
