
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/102/start

#EFFECT
particle block stone ~ ~ ~ 0.1 0.1 0.1 0.05 2 force



#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/102/impact
