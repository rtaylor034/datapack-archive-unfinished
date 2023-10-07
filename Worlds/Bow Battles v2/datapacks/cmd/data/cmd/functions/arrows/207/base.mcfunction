
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/207/start

#EFFECT
particle dust 0.5 0.5 0.5 1.3 ~ ~ ~ 0.1 0.1 0.1 1 2 force



#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/207/impact




