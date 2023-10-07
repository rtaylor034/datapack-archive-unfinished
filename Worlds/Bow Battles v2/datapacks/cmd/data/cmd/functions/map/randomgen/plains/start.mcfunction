
#Call to start generating a random plains biome
kill @e[type=minecraft:area_effect_cloud,tag=mapgen]
scoreboard players set ticks mapgen 0
function cmd:map/clear
summon minecraft:area_effect_cloud 4927 0 -80 {Tags:["origin","mapgen"],Duration:999999}

function cmd:map/randomgen/plains/tickloop
