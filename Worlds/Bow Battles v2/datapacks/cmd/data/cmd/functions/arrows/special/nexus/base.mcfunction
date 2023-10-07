
#START
execute as @s[scores={atime=1}] at @s run function cmd:arrows/special/nexus/start

#EFFECT
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 2 force
particle minecraft:firework ~ ~ ~ 0 0 0 0.12 2 force @a[tag=!ldm]


#IMPACT
execute as @s[nbt={inGround:1b}] at @s run function cmd:arrows/special/nexus/impact
