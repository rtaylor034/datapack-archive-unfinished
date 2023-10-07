
#IMPACT

execute as @s[tag=red] run effect give @a[team=blue,distance=0..3.5] slowness 5 1
execute as @s[tag=blue] run effect give @a[team=red,distance=0..3.5] slowness 5 1
execute as @s[tag=ffa] run effect give @a[team=ffa,distance=0..3.5] slowness 5 1
playsound entity.slime.squish player @a ~ ~ ~ 1 0
particle item_slime ~ ~.2 ~ 1.5 0.2 1.5 1 40 force

function cmd:tracking/killtracker
kill @s




