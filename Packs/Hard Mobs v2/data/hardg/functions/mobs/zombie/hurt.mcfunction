

#DEAD
execute if score @s hardg_health matches ..0 run function hardg:mobs/zombie/death

#RAGE
execute if score @s[tag=!hardg-zombie-rage] hardg_health matches ..150 run function hardg:mobs/zombie/startrage



#BLOOD
execute if score @s hardg_damage matches 1.. as @s[tag=hardg-zombie-rage] run playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 0.8 1.15
execute if score @s hardg_damage matches 20.. run particle block redstone_wire ~ ~1 ~ 0.2 0.4 0.2 0.5 30 normal
execute if score @s hardg_damage matches 60.. run particle block redstone_wire ~ ~1 ~ 0.2 0.4 0.2 0.8 30 normal
execute if score @s hardg_damage matches 80.. run particle block redstone_wire ~ ~1 ~ 0.2 0.4 0.2 1 30 normal
execute if score @s hardg_damage matches 120.. run particle block redstone_wire ~ ~1 ~ 0.2 0.4 0.2 1.2 40 normal
execute if score @s hardg_damage matches 200.. run particle block redstone_wire ~ ~1 ~ 0.2 0.4 0.2 2 80 normal
execute if score @s hardg_damage matches 200.. run particle item bone ~ ~1 ~ 0.2 0.4 0.2 0.15 20 normal
execute if score @s hardg_damage matches 120.. run playsound minecraft:entity.zombie.step hostile @a ~ ~ ~ 0.8 0
execute if score @s hardg_damage matches 200.. run playsound minecraft:entity.zombie.destroy_egg hostile @a ~ ~ ~ 0.8 0.7
