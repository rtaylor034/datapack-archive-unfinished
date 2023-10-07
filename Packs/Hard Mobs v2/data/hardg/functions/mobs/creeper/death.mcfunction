

stopsound @a[distance=0..10] * entity.creeper.hurt
#VFX
particle item gunpowder ~ ~1 ~ 0.3 0.4 0.3 0.1 40 normal
particle item moss_block ~ ~1 ~ 0.3 0.4 0.3 0.15 20 normal
playsound minecraft:entity.creeper.death hostile @a ~ ~ ~ 0.8 1.1

#POOF
execute if score mobs.general.poofDeath hardg_control matches 1 run particle poof ~ ~.5 ~ 0.3 0.5 0.3 0 18 force

#damage score
scoreboard players set @s hardg_damage 0
