
#called when point on bridge "308btime" hits 21

#BLOCK
execute if block ~ ~-1 ~ #cmd:space run playsound minecraft:block.wool.place block @a ~ ~ ~ 0.7 0.8
execute as @s[tag=ffa] run fill ~.1 ~-1 ~.1 ~-.1 ~-1 ~-.1 light_gray_wool replace #cmd:space
execute as @s[tag=red] run fill ~.1 ~-1 ~.1 ~-.1 ~-1 ~-.1 red_wool replace #cmd:space
execute as @s[tag=blue] run fill ~.1 ~-1 ~.1 ~-.1 ~-1 ~-.1 blue_wool replace #cmd:space
#KILL
kill @s
