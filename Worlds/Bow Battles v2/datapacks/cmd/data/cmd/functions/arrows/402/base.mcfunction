
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/402/start

#EFFECT
execute as @s[scores={gtimer2=3..}] at @s run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={gtimer2=9..}] at @s run particle flame ~ ~ ~ 0 0 0 0.1 3 force
particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.01 1 force
#TIMER
scoreboard players add @s gtimer 1
execute as @s[scores={gtimer2=..8,gtimer=18..}] at @s run function cmd:arrows/402/addpower
#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/402/impact




