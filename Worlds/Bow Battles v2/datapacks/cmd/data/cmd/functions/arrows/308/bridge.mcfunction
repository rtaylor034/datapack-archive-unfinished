
#SCORE
scoreboard players remove #308range local 1
execute if block ~ ~-1 ~ #cmd:space run scoreboard players remove #308brange local 1

#BRIDGE
execute if block ~ ~-1 ~ #cmd:space run execute if score #308brange local matches 1.. run function cmd:arrows/308/createchild

#VFX
execute as @s[tag=red] run particle minecraft:dust -.05 0 0 0.8 ~ ~-1 ~ 0 0 0 0 1 force @a[tag=found]
execute as @s[tag=ffa] run particle minecraft:dust -.3 -.3 -.3 0.8 ~ ~-1 ~ 0 0 0 0 1 force @a[tag=found]
execute as @s[tag=blue] run particle minecraft:dust 0 0 -.05 0.8 ~ ~-1 ~ 0 0 0 0 1 force @a[tag=found]

#END
execute if score #308range local matches 1.. facing entity @e[type=arrow,tag=308target] feet positioned ^ ^ ^.5 run function cmd:arrows/308/bridge
