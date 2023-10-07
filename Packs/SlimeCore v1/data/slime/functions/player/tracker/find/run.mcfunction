
#IN - (@s -> slime_playerid) | playerid
#OUT - N/A
#CONTEXT - this player

#USE - Adds the tag "slime-foundtracker" to this player's tracker.


#NOTE - IMPORTANT **ABSOLUTELY MUST** call "slime:player/tracker/unfind/run" for every time this is called. (in the same tick or function).
#NOTE - "slime_trackcount" is a count of how many times the tracker has been found this tick, and makes sure that there is no complications with removing the tag prematurely and causing errors.

#NOTE - IMPORTANT - Make sure that ONLY 1 player's tracker is found at once, **NEVER EVER** should 2 seperate player's trackers have the tag "slime-foundtracker" at the same time.

scoreboard players operation trackfind.id slime_var = @s slime_playerid
execute as @e[type=minecraft:marker,tag=slime-tracker,tag=!slime-reset-tracker] if score @s slime_playerid = trackfind.id slime_var run tag @s add slime-foundtracker
execute as @e[type=minecraft:marker,tag=slime-foundtracker] run scoreboard players add @s slime_trackcount 1


scoreboard players reset trackfind.id slime_var
