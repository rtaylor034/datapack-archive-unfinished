
#IMPACT
execute as @a[distance=0..3,scores={playerstate=1},nbt={OnGround:1b}] at @s run function cmd:arrows/304/biglaunch
execute as @a[distance=3..5,scores={playerstate=1},nbt={OnGround:1b}] at @s run function cmd:arrows/304/smalllaunch

playsound minecraft:entity.player.attack.crit block @a ~ ~ ~ 1 0.6
particle block bedrock ~ ~.1 ~ 2 0 2 1 150 force

kill @s
