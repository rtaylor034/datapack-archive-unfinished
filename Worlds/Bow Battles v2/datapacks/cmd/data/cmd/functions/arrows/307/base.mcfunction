
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/307/start

#EFFECT
particle smoke ~ ~ ~ 0.05 0.05 0.05 0.05 3 force
particle flame ~ ~ ~ 0.05 0.05 0.05 0.02 1 force



#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/307/impact
