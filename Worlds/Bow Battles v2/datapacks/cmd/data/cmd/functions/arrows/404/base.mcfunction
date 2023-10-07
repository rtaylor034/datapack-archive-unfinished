
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/404/start

#EFFECT
particle soul ~ ~ ~ 0.04 0.04 0.04 0.04 4 force
particle minecraft:warped_spore ~ ~ ~ 0.1 0.1 0.1 0.1 4 force
#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/404/impact
