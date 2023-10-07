
#IMPACT

execute as @s[tag=red] at @s run fill ~ ~ ~ ~ ~ ~ red_wool replace #cmd:space
execute as @s[tag=blue] at @s run fill ~ ~ ~ ~ ~ ~ blue_wool replace #cmd:space
execute as @s[tag=ffa] at @s run fill ~ ~ ~ ~ ~ ~ light_gray_wool replace #cmd:space
playsound block.wool.place block @a ~ ~ ~ 1 0.8


function cmd:tracking/killtracker
kill @s
