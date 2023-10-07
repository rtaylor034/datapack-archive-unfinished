
#DATA
data merge entity @s {PickupDelay:100s}

#SCORES
scoreboard players add @s gtimer 5
#VFX
particle smoke ~ ~.3 ~ 0.03 0.03 0.03 0.01 1 force

#STACK
execute as @s[nbt={Item:{Count:2b}}] at @s run function cmd:arrows/301/stack


#EXPLODE
execute as @s[scores={gtimer2=0}] at @s run function cmd:arrows/301/explode
#TICK
execute if score @s gtimer >= @s gtimer2 run function cmd:arrows/301/tick

#GROUND
execute as @s[tag=!grounded,nbt={OnGround:1b}] at @s run function cmd:arrows/301/ground
