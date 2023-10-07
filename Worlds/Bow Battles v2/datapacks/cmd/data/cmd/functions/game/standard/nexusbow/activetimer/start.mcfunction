#starts nexus bow despawn countdown

#BOSSBAR
bossbar add standard:nexusbowactive ""
bossbar set standard:nexusbowactive style progress
bossbar set standard:nexusbowactive color green

#INITIAL SCORES
execute store result bossbar standard:nexusbowactive max run scoreboard players operation #GAME nbactive = #GAME nbactivetime

#bossbar set standard:nexusbowactive name ["",{"text":"Time until nb despawn: ","color":"green"},{"score":{"name":"#GAME","objective":"nbactive"},"bold":true,"color":"green"}]
bossbar set standard:nexusbowactive players @a


#FUNCT
schedule clear cmd:game/standard/nexusbow/activetimer/sec
function cmd:game/standard/nexusbow/activetimer/sec
