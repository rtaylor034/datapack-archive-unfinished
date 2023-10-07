
#DATA
data merge entity @s {damage:0.01d,crit:0b}
execute store result entity @s Motion[1] double .0000001 run data get entity @s Motion[1] 15000000
#EFFECTS
playsound entity.generic.explode block @a ~ ~ ~ 1 1.9 0.4
particle smoke ~ ~ ~ 0.1 0.1 0.1 0.1 15
particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 5

scoreboard players set @s gtimer2 1
#TRACKER
function cmd:register/createtracker

