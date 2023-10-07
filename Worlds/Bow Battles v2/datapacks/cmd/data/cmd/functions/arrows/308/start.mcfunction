
#DATA
data merge entity @s {damage:0d,crit:0b}


#CHILD (BRIDGE START MARKER)

function cmd:tracking/findplayer

execute as @a[tag=found,limit=1,sort=nearest] run summon minecraft:area_effect_cloud ~ ~-1 ~ {Tags:["308c","child","init"],Duration:9999}

tag @a remove found

function cmd:tracking/genrandomid
function cmd:register/initchild
