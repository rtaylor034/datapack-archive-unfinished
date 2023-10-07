
#DATA
data merge entity @s {damage:0d,crit:0b}

playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 1.2 0.5
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 2 0.5
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.3 75 force
particle minecraft:firework ~ ~ ~ 0 0 0 0.6 75 force @a[tag=!ldm]
#TRACKER
function cmd:register/createtracker

#DESPAWN NEXUS BOW
schedule clear cmd:game/standard/nexusbow/activetimer/sec

function cmd:game/standard/nexusbow/despawn
