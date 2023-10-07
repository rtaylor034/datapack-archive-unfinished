
#called when nexus bow timer reaches 0

#VFX
say NEXUS BOW SPAWNED

#SPAWNING
#IMPORTANT - Temporary placeholder item, please change lore and stuff
execute as @e[type=minecraft:marker,tag=nbspawn,limit=1] at @s run function cmd:game/standard/nexusbow/summonitem
tag @e[type=item,tag=nbitem,limit=1,sort=nearest] add nboriginal
#BOSSBAR
bossbar set standard:nexusbow style progress
bossbar set standard:nexusbow name {"text":"NEXUS BOW SPAWNED","color":"yellow","bold":true}
execute store result bossbar standard:nexusbow value run bossbar get standard:nexusbow max
schedule function cmd:game/standard/nexusbow/timer/end 3s
