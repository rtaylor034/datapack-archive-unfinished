
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/308/start

#EFFECT
execute as @s[tag=ffa] at @s run particle item light_gray_wool ~ ~ ~ 0.1 0.1 0.1 0.1 3 force


#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/308/impact
