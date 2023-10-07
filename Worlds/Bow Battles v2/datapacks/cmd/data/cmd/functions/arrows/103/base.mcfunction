
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/103/start

#EFFECT
particle end_rod ~ ~ ~ 0.05 0.05 0.05 0.02 1 force



#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/103/impact




