#called every second from start, until nexus bow timer hits 0

scoreboard players operation nbdisplay local = #GAME nbspawntime
scoreboard players operation nbdisplay local -= #GAME nbtimer
execute store result bossbar standard:nexusbow value run scoreboard players get nbdisplay local
#BOSSBAR NAME
bossbar set standard:nexusbow name {"text":"Nexus Bow charging... ","color":"yellow"}

scoreboard players remove #GAME nbtimer 1

#RECUR
execute if score #GAME nbtimer matches 0.. run schedule function cmd:game/standard/nexusbow/timer/sec 1s
execute unless score #GAME nbtimer matches 0.. run function cmd:game/standard/nexusbow/spawn
