#RECUR FOR CLEAR

scoreboard players add cleartime mapgen 1
fill ~80 ~ ~80 ~-80 ~ ~-80 air

execute if score cleartime mapgen matches 1..200 positioned ~ ~1 ~ run function cmd:map/clearrecur
