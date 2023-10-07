
#IMPACT

#EFFECTS
particle flash ~ ~1 ~ 0 0 0 1 1 force
execute as @s[tag=red] as @a[scores={playerstate=1},team=blue,distance=0..12] at @s run particle flash ~ ~1 ~ 0 0 0 1 1 force @s
execute as @s[tag=blue] as @a[scores={playerstate=1},team=red,distance=0..12] at @s run particle flash ~ ~1 ~ 0 0 0 1 1 force @s
execute as @s[tag=ffa] as @a[scores={playerstate=1},team=ffa,distance=0..12] at @s run particle flash ~ ~1 ~ 0 0 0 1 1 force @s
playsound entity.ender_eye.death master @a ~ ~ ~ 1.1 0.9

#GLOW
execute as @s[tag=blue] as @a[team=red,distance=0..12] at @s run effect give @s glowing 5 1 true
execute as @s[tag=red] as @a[team=blue,distance=0..12] at @s run effect give @s glowing 5 1 true
execute as @s[tag=ffa] as @a[team=ffa,distance=0..12] at @s run effect give @s glowing 5 1 true

kill @s




