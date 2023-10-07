
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/106/start

#EFFECT
particle item_slime ~ ~ ~ 0.1 0.1 0.1 1 2 force



#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/106/impact




