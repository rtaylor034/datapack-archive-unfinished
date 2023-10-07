#Call to clear the map area

scoreboard players set cleartime mapgen 0
execute positioned 4927 1 -80 run function cmd:map/clearrecur
