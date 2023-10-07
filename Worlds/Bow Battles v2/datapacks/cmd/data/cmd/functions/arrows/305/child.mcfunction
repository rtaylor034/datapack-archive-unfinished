
#GTIMER
scoreboard players add @s gtimer 1

#VFX
particle minecraft:block ice ~ ~ ~ 2.5 0.2 2.5 1 3 force
particle minecraft:item ice ~ ~ ~ 2.5 0.2 2.5 0.05 3 force
particle minecraft:dust -.4 -.4 -.05 0.7 ~ ~ ~ 2.5 0.2 2.5 1 3 force
particle minecraft:dust -.4 -.4 -.05 0.5 ~ ~ ~ 2 2 2 1 13 force
particle minecraft:dust -.2 -.2 -.05 0.8 ~ ~ ~ 2 2 2 1 13 force
playsound block.snow.break block @a ~ ~ ~ 0.3 0.8

#TEAM FIND
function cmd:tracking/findtargetteam

#FROZEN EFFECT
scoreboard players set @a[tag=tteam,scores={playerstate=1,305frost=..5},distance=0..5,nbt={OnGround:1b}] 305frost 10

#SLOW
effect give @a[tag=tteam,scores={playerstate=1},distance=0..5] minecraft:slowness 1 3 true
effect give @a[tag=tteam,scores={playerstate=1},distance=0..5] minecraft:jump_boost 1 250 true
effect clear @a[tag=tteam,scores={playerstate=1},distance=5..6] minecraft:jump_boost

#TAG
tag @a remove tteam

#DIE
execute as @s[scores={gtimer=140..}] as @a[tag=tteam,scores={playerstate=1},distance=0..6] at @s run effect clear @s jump_boost
kill @s[scores={gtimer=140..}]
