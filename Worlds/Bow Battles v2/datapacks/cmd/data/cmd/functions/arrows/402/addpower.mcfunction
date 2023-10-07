

scoreboard players add @s gtimer2 1
function cmd:tracking/findtracker
scoreboard players add @e[type=area_effect_cloud,limit=1,tag=tfound] gtimer2 1
tag @e[type=area_effect_cloud] remove tfound
#SCORES
scoreboard players set @s gtimer 0