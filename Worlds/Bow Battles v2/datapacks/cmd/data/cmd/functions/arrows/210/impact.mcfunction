
#IMPACT

fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 fire replace #cmd:space
execute if block ~ ~ ~ #fire run playsound minecraft:entity.ghast.shoot voice @a ~ ~ ~ 0.8 0.9
execute if block ~ ~ ~ #fire run particle large_smoke ~ ~ ~ 0.4 0.3 0.4 0.01 50 force
execute if block ~ ~ ~ #fire run particle smoke ~ ~ ~ 0.4 0.2 0.4 0.2 20 force

function cmd:tracking/killtracker
kill @s
