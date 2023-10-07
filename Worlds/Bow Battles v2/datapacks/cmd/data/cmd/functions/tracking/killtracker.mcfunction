
#\call from arrow to kill its respective tracker\
#\usually used when arrow hits ground\

function cmd:tracking/findtracker
kill @e[type=area_effect_cloud,tag=tfound]
tag @e[type=area_effect_cloud] remove tfound





