
#\Add tag "kill" to arrows to properly remove them unnaturally\
execute as @s[tag=kill] at @s run function cmd:killtracker
kill @s[tag=kill]


#TIMER
scoreboard players add @s atime 1

#BASES
execute as @s[scores={arrowid=100..199}] at @s run function cmd:arrows/tier1base
execute as @s[scores={arrowid=200..299}] at @s run function cmd:arrows/tier2base
execute as @s[scores={arrowid=300..399}] at @s run function cmd:arrows/tier3base
execute as @s[scores={arrowid=400..499}] at @s run function cmd:arrows/tier4base
execute as @s[scores={arrowid=500..599}] at @s run function cmd:arrows/tier5base
execute as @s[scores={arrowid=1000..}] at @s run function cmd:arrows/specialbase



#CHILD ARROWS
execute as @s[tag=childarrow] at @s run function cmd:arrows/childarrowbase
