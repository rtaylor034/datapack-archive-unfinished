
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/210/start

#EFFECT
particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 1 force
particle smoke ~ ~ ~ 0.1 0.1 0.1 0.05 3 force



#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/210/impact
