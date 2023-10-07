
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/204/start

#EFFECT
particle firework ~ ~ ~ 0 0 0 0.05 1 force

#EXPLODE
execute as @s[scores={atime=40..}] at @s run function cmd:tracking/killtracker
execute as @s[scores={atime=40..}] at @s run function cmd:arrows/204/explode

#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/204/impact




