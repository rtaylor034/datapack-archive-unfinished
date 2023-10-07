
#called from tracker on playerhit

#ADD COMBO
function cmd:tracking/findplayer
scoreboard players add @a[tag=found,limit=1] 208combo 1

execute as @a[tag=found] at @s run function cmd:arrows/208/combonoise




#TAG
tag @a remove found
