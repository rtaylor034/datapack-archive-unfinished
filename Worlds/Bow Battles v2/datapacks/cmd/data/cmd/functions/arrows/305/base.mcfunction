
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/305/start

#EFFECT
particle item ice ~ ~ ~ 0.1 0.1 0.1 0.03 2 force
particle minecraft:dust -.3 -.3 -.05 0.7 ~ ~ ~ 0.1 0.1 0.1 1 2 force
particle minecraft:dust -.1 -.1 -.01 1 ~ ~ ~ 0.02 0.02 0.02 1 1 force


#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/305/impact
