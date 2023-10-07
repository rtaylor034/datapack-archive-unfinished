
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/205/start

#EFFECT
particle dust 0 0.8 0 1 ~ ~ ~ 0.1 0.1 0.1 1 2 force



#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/205/impact




