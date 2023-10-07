
#Called when slammed player hits ground

#SLAM
execute as @a[distance=0.01..3,scores={playerstate=1},nbt={OnGround:1b}] at @s run function cmd:arrows/304/biglaunch
execute as @a[distance=3..5,scores={playerstate=1},nbt={OnGround:1b}] at @s run function cmd:arrows/304/smalllaunch

#VFX
playsound minecraft:entity.player.attack.crit block @a ~ ~ ~ 1 0.6
particle block bedrock ~ ~.1 ~ 0.7 0 0.7 1 50 force
particle crit ~ ~.05 ~ 0.3 0 0.3 1.1 50 force

#ROOT
effect give @s slowness 1 250 true
effect give @s minecraft:jump_boost 1 250 true



#TAGS
tag @s remove 304slam
