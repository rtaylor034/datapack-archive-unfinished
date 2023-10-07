
#\called from player hit\

fill ~ ~ ~ ~ ~ ~ fire replace #cmd:space
execute if block ~ ~ ~ #fire run playsound minecraft:entity.ghast.shoot voice @a ~ ~ ~ 0.8 1.5
execute if block ~ ~ ~ #fire run particle flame ~ ~1 ~ 0.3 0.45 0.3 0.01 15 force
execute if block ~ ~ ~ #fire run particle smoke ~ ~1 ~ 0.3 0.45 0.3 0.01 20 force

tag @s remove arrowhit
