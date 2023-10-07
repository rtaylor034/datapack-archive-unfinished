#called when the activetimer for nexus bow reaches 0

#VFX
say nexus bow despawned

#CLEARS
clear @a bow{bowid:1000}
kill @e[type=item,tag=nbitem]

#TIMER RESTART
execute if score #GAME nbspawntime matches 11.. run scoreboard players remove #GAME nbspawntime 5

#bow starts charging 10 seconds after respawn
schedule function cmd:game/standard/nexusbow/timer/start 10s
