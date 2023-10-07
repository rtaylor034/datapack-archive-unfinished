

#VFX
particle item bone ~ ~1 ~ 0.2 0.4 0.2 0.12 30 normal
particle item bone ~ ~1 ~ 0.2 0.4 0.2 0.1 20 normal
particle item arrow ~ ~1 ~ 0.1 0.3 0.1 0.11 40 normal
playsound minecraft:entity.skeleton.death hostile @a ~ ~ ~ 0.8 1.1

#POOF
execute if score mobs.general.poofDeath hardg_control matches 1 run particle poof ~ ~1 ~ 0.3 0.5 0.3 0 20 force
