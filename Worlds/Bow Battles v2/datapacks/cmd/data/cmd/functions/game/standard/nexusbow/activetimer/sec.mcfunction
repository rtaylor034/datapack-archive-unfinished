#called every second from start, until nexus bow active timer hits 0

execute store result bossbar standard:nexusbowactive value run scoreboard players get #GAME nbactive
#BOSSBAR NAME
bossbar set standard:nexusbowactive name {"text":"Nexus Bow ACTIVE ","color":"yellow"}

scoreboard players remove #GAME nbactive 1

#RECUR
execute if score #GAME nbactive matches 0.. run schedule function cmd:game/standard/nexusbow/activetimer/sec 1s
execute unless score #GAME nbactive matches 0.. run function cmd:game/standard/nexusbow/despawn
execute unless score #GAME nbactive matches 0.. run function cmd:game/standard/nexusbow/activetimer/end
