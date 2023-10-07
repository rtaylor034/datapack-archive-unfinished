
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/401/start

#EFFECT
particle reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.05 2 force
particle witch ~ ~ ~ 0 0 0 1 1 force
particle portal ~ ~ ~ 0 0 0 0.5 2 force


#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/401/impact




