
#IMPACT

#CHILD
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["child","305c","init"],Duration:999999}
function cmd:register/initchild

#VFX
particle item snowball ~ ~ ~ 0.1 0.1 0.1 0.35 50 force
particle item ice ~ ~ ~ 0.1 0.1 0.1 0.35 60 force
playsound block.glass.break block @a ~ ~ ~ 0.7 0.9

function cmd:tracking/killtracker
kill @s
