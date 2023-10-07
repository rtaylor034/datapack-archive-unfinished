
#called every tick when #GAME has gamemode of 1



#NEXUS BOW ITEM
execute as @e[type=item,tag=nbitem] at @s run function cmd:game/standard/nexusbow/itemtick

#NEXUS BOW PICKUP DETECT
execute as @a[tag=!hasnb,scores={playerstate=1},nbt={Inventory:[{id:"minecraft:bow",tag:{bowid:1000}}]}] at @s run function cmd:game/standard/nexusbow/pickup
execute as @a[tag=hasnb,scores={playerstate=1},nbt=!{Inventory:[{id:"minecraft:bow",tag:{bowid:1000}}]}] at @s run function cmd:game/standard/nexusbow/ondrop
