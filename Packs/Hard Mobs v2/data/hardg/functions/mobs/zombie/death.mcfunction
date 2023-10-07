

#score
scoreboard players set @s hardg_damage 0
tag @s add hardg-zombie-rage

#VFX
particle item rotten_flesh ~ ~1 ~ 0.2 0.4 0.2 0.15 40 normal
particle item rotten_flesh ~ ~1 ~ 0.2 0.5 0.2 0.1 50 normal
playsound minecraft:entity.zombie.death hostile @a ~ ~ ~ 0.8 0.8

#POOF
execute if score mobs.general.poofDeath hardg_control matches 1 run particle poof ~ ~1 ~ 0.3 0.5 0.3 0 25 force
