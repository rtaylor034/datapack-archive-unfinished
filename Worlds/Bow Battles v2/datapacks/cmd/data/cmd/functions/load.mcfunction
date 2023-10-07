
#SCOREBOARDS

#GENERAL SCOREBOARDS
scoreboard objectives add gtimer dummy
scoreboard objectives add gtimer2 dummy
scoreboard objectives add atime dummy
scoreboard objectives add local dummy
scoreboard objectives add mapgen dummy
#STATUS SCORES

#\0 = lobby, 1 = alive, 2 = dead, 3 = spectating\
scoreboard objectives add playerstate dummy
scoreboard objectives add dietick deathCount

#stored in GLOBAL to indicated gamemode: 0 = out of game, 1 = standard, 2 = deathmatch, etc
scoreboard objectives add gamemode dummy

#SPECIAL SCOREBOARDS
scoreboard objectives add shoot minecraft.used:minecraft.bow

#DEATH SCOREBOARDS
#\uses fake player "#tickstorage_<team>"\
scoreboard objectives add explodedeaths dummy

#KILLS
scoreboard objectives add enemykills dummy
scoreboard objectives add allykills dummy


#CALLS
function cmd:integers
function cmd:tracking/trackingscoreboards
function cmd:math/mathscoreboards
function cmd:register/scoreboards
function cmd:player/arrowcount/scoreboards
function cmd:player/scoreboards
function cmd:arrows/arrowscoreboards
function cmd:player/zones/scoreboards
function cmd:game/scoreboards

#TEAMS
function cmd:teamsetup

#SECTICK
schedule clear cmd:sectick
function cmd:sectick


#MESSAGE
tellraw @a {"color":"gray","text":"Bow Battles - Reloaded"}
