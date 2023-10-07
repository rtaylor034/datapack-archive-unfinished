#called when somebody first picks up nexus bow

#BOSSBAR
bossbar add standard:nexusbow ""
bossbar set standard:nexusbow style notched_6
bossbar set standard:nexusbow color green

#INITIAL SCORES
execute store result bossbar standard:nexusbow max run scoreboard players operation #GAME nbtimer = #GAME nbspawntime

bossbar set standard:nexusbow name ["",{"text":"Nexus Bow spawning in: ","color":"green"},{"score":{"name":"#GAME","objective":"nbtimer"},"bold":true,"color":"green"}]
bossbar set standard:nexusbow players @a


#FUNCT
schedule clear cmd:game/standard/nexusbow/timer/sec
function cmd:game/standard/nexusbow/timer/sec
