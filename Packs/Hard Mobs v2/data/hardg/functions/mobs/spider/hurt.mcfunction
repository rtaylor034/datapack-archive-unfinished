
#DEATH
execute as @s[scores={hardg_health=..0}] run function hardg:mobs/spider/death


#BLOOD
execute if score @s hardg_damage matches 20.. run particle item fermented_spider_eye ~ ~0.5 ~ 0.4 0.2 0.4 0.1 20 normal
execute if score @s hardg_damage matches 20.. run particle block cobweb ~ ~0.5 ~ 0.4 0.2 0.4 0.1 20 normal
execute if score @s hardg_damage matches 80.. run particle item fermented_spider_eye ~ ~0.5 ~ 0.4 0.2 0.4 0.11 20 normal
execute if score @s hardg_damage matches 120.. run particle item redstone_block ~ ~0.5 ~ 0.4 0.2 0.4 0.13 40 normal
