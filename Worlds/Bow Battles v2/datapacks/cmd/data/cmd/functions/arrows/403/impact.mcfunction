
#IMPACT
summon area_effect_cloud ~ ~ ~ {Tags:["403c","child","init"],Duration:9999}
function cmd:register/initchild

#EFFECTS
summon lightning_bolt ~ 255 ~
particle cloud ~ ~15 ~ 0.1 10 0.1 0.05 100 force

kill @s
