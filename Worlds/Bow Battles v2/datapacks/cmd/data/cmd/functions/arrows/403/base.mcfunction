
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/403/start

#EFFECT
particle rain ~ ~ ~ 0.1 0.1 0.1 1 10 force
particle cloud ~ ~ ~ 0.1 0.1 0.1 0.05 1 force

#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/403/impact




