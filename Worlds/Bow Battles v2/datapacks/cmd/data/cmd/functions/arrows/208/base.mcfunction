
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/208/start

#VFX
particle crit ~ ~ ~ 0 0 0 0.1 1 force
execute as @s[scores={208combo=2..}] at @s run particle crit ~ ~ ~ 0 0 0 0.3 1 force
execute as @s[scores={208combo=4..}] at @s run particle crit ~ ~ ~ 0 0 0 0.6 2 force
execute as @s[scores={208combo=6..}] at @s run particle crit ~ ~ ~ 0 0 0 0.9 2 force


#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/208/impact
