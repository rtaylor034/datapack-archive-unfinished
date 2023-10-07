
#EFFECTS
scoreboard players set @s gcon_craft 0
#COUNT DECREASE
data modify storage gconstruct:con/itemarr Items set from block ~ ~ ~ Items
execute store result score @s gcon_ccount run data get block ~ ~ ~ Items
function gconstruct:constructor/count
data modify block ~ ~ ~ Items set from storage gconstruct:con/itemarr Items

function gconstruct:constructor/recipes/base

tag @s add gconcrafted