
#IMPACT

function cmd:tracking/findplayer
execute as @a[tag=found,limit=1] at @s run function cmd:arrows/208/resetcombo
tag @a remove found
function cmd:tracking/killtracker
kill @s
