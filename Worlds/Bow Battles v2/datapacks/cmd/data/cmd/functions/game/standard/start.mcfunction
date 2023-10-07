
#called to start the game.

#SCORES
function cmd:tracking/assignids
scoreboard players set @a respawntime 100
scoreboard players set @a arrowcount 0
scoreboard players set @a maxarrows 20
scoreboard players set @a playerstate 1
scoreboard players set @a arrowdelay 35
scoreboard players set @a arrowtimer 0
scoreboard players set @a gold 0
scoreboard players set @a goldrate 15
scoreboard players set @a goldtimer 0

#GAME
scoreboard players set #RED points 0
scoreboard players set #BLUE points 0
scoreboard players set #GAME gamemode 1
scoreboard players set #GAME nbspawntime 60
scoreboard players set #GAME nbactivetime 20
function cmd:game/standard/timer/start

#nexus bow starts spawning after 2 minutes
schedule function cmd:game/standard/nexusbow/timer/start 1s
gamemode adventure @a

#GAMERULES
gamerule doTileDrops true






#TP
tp @a[team=red] @e[type=area_effect_cloud,tag=redspawn,limit=1]
tp @a[team=blue] @e[type=area_effect_cloud,tag=bluespawn,limit=1]
