
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/211/start

#EFFECT
particle item arrow ~ ~ ~ 0.1 0.1 0.1 0.12 5 force
particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.05 1 force



#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/211/impact
