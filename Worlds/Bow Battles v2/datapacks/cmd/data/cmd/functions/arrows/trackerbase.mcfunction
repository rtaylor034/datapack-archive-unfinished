
#TIMER
scoreboard players add @s gtimer 1

#TRACK
function cmd:tracking/findarrow
tp @s @e[type=arrow,tag=afound,limit=1,sort=nearest]
#HIT
execute unless entity @e[type=arrow,tag=afound,limit=1,sort=nearest] run tag @s add arrowgone
tag @e[type=arrow] remove afound


#BASES
execute as @s[scores={trackerid=100..199}] at @s run function cmd:arrows/trackertier1base
execute as @s[scores={trackerid=200..299}] at @s run function cmd:arrows/trackertier2base
execute as @s[scores={trackerid=300..399}] at @s run function cmd:arrows/trackertier3base
execute as @s[scores={trackerid=400..499}] at @s run function cmd:arrows/trackertier4base
execute as @s[scores={trackerid=500..599}] at @s run function cmd:arrows/trackertier5base
execute as @s[scores={trackerid=1000..}] at @s run function cmd:arrows/trackerspecialbase


#KILL
kill @s[tag=arrowgone]
