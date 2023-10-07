


#VFX
particle item string ~ ~.2 ~ 0.3 0.2 0.3 0.1 40 normal
particle item spider_eye ~ ~.2 ~ 0.3 0.2 0.3 0.1 40 normal
playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 0.8 1.2

#POOF
execute if score mobs.general.poofDeath hardg_control matches 1 run particle poof ~ ~.2 ~ 0.4 0.2 0.4 0 12 force
