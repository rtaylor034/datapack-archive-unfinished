
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/206/start

#EFFECT
particle heart ~ ~ ~ 0.05 0.05 0.05 0 1 force



#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/206/impact




