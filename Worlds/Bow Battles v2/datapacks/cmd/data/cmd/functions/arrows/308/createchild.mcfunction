
#This child is the entity that stays and creates the block
#called from raycast when bridge is called, up to the range of the bridge


summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["child","308c2","init"],Duration:999}

scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=init,limit=1] 308btime = #308brange local
function cmd:register/initchild
