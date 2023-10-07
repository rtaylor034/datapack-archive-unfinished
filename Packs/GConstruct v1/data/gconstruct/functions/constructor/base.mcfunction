


#EFFECT
execute positioned ~ ~-.5 ~ unless entity @e[type=falling_block,tag=gcbmask,distance=0..0.1] run function gconstruct:constructor/mask


#BREAK
execute unless block ~ ~ ~ dropper[facing=up] run function gconstruct:constructor/break

#RECIPES
execute if entity @a[distance=0..5] if data block ~ ~ ~ Items[] run function gconstruct:constructor/recipes/base
execute as @s[tag=gconcrafted] at @s run function gconstruct:constructor/crafteffects
