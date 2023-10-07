
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/105/start

#EFFECT
execute as @s[tag=red] at @s run particle block red_wool ~ ~ ~ 0.1 0.1 0.1 0.05 2 force
execute as @s[tag=blue] at @s run particle block blue_wool ~ ~ ~ 0.1 0.1 0.1 0.05 2 force
execute as @s[tag=ffa] at @s run particle block light_gray_wool ~ ~ ~ 0.1 0.1 0.1 0.05 2 force

#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/105/impact
