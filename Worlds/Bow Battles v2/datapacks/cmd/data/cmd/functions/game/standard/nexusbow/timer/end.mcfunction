#called 3 seconds after nexus bow spawn

scoreboard players set #GAME nbtimer 0
bossbar remove standard:nexusbow


#FUNCT
schedule clear cmd:game/standard/nexusbow/timer/sec
