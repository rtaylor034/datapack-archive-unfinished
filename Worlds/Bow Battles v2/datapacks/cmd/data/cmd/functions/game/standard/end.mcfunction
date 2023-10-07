#called automatically when one team wins the game. (#BLUE or #RED reaches points score of 5.)

#TITLE
title @a times 10 60 20
title @a title {"text":"GAME OVER"}

#SCORES
function cmd:game/standard/timer/end
scoreboard players set #RED points 0
scoreboard players set #BLUE points 0
scoreboard players set @a playerstate 0
gamemode spectator @a

#NEXUS BOW
function cmd:game/standard/nexusbow/despawn
function cmd:game/standard/nexusbow/timer/end
function cmd:game/standard/nexusbow/activetimer/end
schedule clear cmd:game/standard/nexusbow/timer/start

#LOBBY TP
schedule function cmd:game/lobby/returnto 5s
