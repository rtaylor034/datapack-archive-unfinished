
#\child entity that tracks player\

summon area_effect_cloud ~ ~ ~ {Tags:["init","child","204c"],Duration:100}

#{generalvar1} = playerid of victim that is stuck with firework
scoreboard players operation @e[type=area_effect_cloud,tag=init,limit=1,sort=nearest] generalvar1 = @e[tag=arrowhit,limit=1,sort=nearest] playerid

function cmd:register/initchild
