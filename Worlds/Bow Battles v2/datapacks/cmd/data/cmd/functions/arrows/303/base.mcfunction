
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/303/start

#EFFECT
particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0 2 force


#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/303/impact
