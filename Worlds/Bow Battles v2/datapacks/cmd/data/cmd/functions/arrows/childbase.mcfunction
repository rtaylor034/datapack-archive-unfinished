
#\called from any area affect cloud with tag "child"\
#\use for child entities of arrow effects\


#\TIER 1\


#\TIER 2\

#FIREWORK
execute as @s[tag=204c] at @s run function cmd:arrows/204/playerfirework
#SMOKE
execute as @s[tag=207c] at @s run function cmd:arrows/207/smoke

#\TIER 3\
#BOMB
execute as @s[tag=301c] at @s run function cmd:arrows/301/bomb
#IMPACT
execute as @s[tag=304c] at @s run function cmd:arrows/304/child
#FROST
execute as @s[tag=305c] at @s run function cmd:arrows/305/child
#BRIDGE
execute as @s[tag=308c] at @s run function cmd:arrows/308/child
execute as @s[tag=308c2] at @s run function cmd:arrows/308/blockchild


#\TIER 4\
#ARROW STORM
execute as @s[tag=403c] at @s run function cmd:arrows/403/storm


#\TIER 5\



#TAG FOR BLOCKS
tag @s[type=item] add notblock
