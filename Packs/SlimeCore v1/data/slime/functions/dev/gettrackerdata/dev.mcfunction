#IN - N/A
#OUT - [dev.trackerdata.out -> slime:out ; NBT] | tracker data
#CONTEXT - Direct execution @s

#USE - gets this players tracker data and stores it in {OUT}

function slime:player/tracker/find/run
data modify storage slime:out dev.trackerdata.out set from entity @e[type=marker,tag=slime-foundtracker,limit=1] data
function slime:player/tracker/unfind/run
