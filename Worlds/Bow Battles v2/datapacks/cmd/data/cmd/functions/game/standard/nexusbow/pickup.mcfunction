#called from player to first pickup nexus bow

say I have picked up the nexus bow

#TIMER
execute unless score #GAME nbactive matches 1.. run function cmd:game/standard/nexusbow/activetimer/start
function cmd:game/standard/nexusbow/timer/end

#TAG
tag @s add hasnb
