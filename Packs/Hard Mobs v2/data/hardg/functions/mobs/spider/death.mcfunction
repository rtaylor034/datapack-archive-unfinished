


#VFX
particle item string ~ ~.5 ~ 0.4 0.2 0.4 0.1 50 normal
particle item spider_eye ~ ~.5 ~ 0.4 0.2 0.4 0.1 40 normal
playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 0.8 0.8

#POOF
execute if score mobs.general.poofDeath hardg_control matches 1 run particle poof ~ ~.5 ~ 0.4 0.3 0.4 0 18 force

#damage score
scoreboard players set @s hardg_damage 0
