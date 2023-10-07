
#IMPACT


#TELEPORT
function cmd:tracking/findplayer

execute as @a[tag=found,limit=1] at @s run function cmd:arrows/401/tpeffect

data modify entity @s Rotation set from entity @a[tag=found,limit=1] Rotation

tp @a[tag=found,limit=1] @s
tag @a remove found

#EFFECTS
playsound entity.enderman.teleport player @a ~ ~ ~ 1 1.2
particle reverse_portal ~ ~1 ~ 0.4 0.5 0.4 0.1 50 force
particle witch ~ ~1 ~ 0.4 0.5 0.4 0.1 40 force
particle portal ~ ~1 ~ 0.4 0.5 0.4 0.5 40 force

function cmd:tracking/killtracker
kill @s




