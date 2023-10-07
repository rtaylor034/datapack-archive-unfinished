#called from player on death, drops the nexus bow

#CLEAR
clear @s bow{bowid:1000}

#VFX
say I have died with the nexus bow
particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 100 force

#SPAWN
function cmd:game/standard/nexusbow/summonitem



#TAG
tag @s remove hasnb
