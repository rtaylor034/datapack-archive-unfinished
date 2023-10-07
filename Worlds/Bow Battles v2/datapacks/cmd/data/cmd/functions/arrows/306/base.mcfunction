
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/306/start

#EFFECT
particle item arrow ~ ~ ~ 0.1 0.1 0.1 0.02 3 force



#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/306/impact
