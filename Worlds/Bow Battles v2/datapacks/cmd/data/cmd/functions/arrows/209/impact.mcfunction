
#IMPACT
function cmd:tracking/killtracker
execute as @s[scores={209bounce=0..4}] at @s run function cmd:arrows/209/bounce
kill @s
