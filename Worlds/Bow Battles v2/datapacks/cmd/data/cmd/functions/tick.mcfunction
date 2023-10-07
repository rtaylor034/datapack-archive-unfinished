


#\MAKE SURE TO SPECIFY PLAYERSTATE 1 ON ARROW EFFECTS\

#FIRSTJOIN
execute as @a[tag=!bbjoined] at @s run function cmd:firstjoin


#PLAYER
execute as @a[scores={playerstate=1}] at @s run function cmd:player/alive
execute as @a[scores={playerstate=2}] at @s run function cmd:player/dead
execute as @a[scores={playerstate=3}] at @s run function cmd:player/spec

#ARROWS
execute as @e[type=arrow] at @s run function cmd:arrows/arrowbase
#\use tag "childarrow" when creating a child that is an arrow\
execute as @e[type=!arrow,type=!player,tag=child] at @s run function cmd:arrows/childbase


#TRACKERS
execute as @e[type=area_effect_cloud,tag=tracker] at @s run function cmd:arrows/trackerbase

#WORLD
function cmd:world/worldbase

#GAME
function cmd:game/gamebase
#CLEARS
#\try to remove arrowhit/explodehit in the function that executes on the player that is hit\
tag @a remove arrowhit
tag @a remove explodehit
tag @a remove explodedeath
scoreboard players set @a sneak 0

#COMMENTS
#\remember to include low detail mode (ldm) consideration for heavy particles
