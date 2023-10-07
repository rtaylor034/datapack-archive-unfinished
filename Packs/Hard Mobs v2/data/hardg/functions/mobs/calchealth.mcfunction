
#IMPORTANT - When spawning mob, set their ghm_maxhealth score to 10x the actual health you want, and set their in-game health to 10000

#store current
scoreboard players operation #storehealth hardg_var = @s hardg_health

scoreboard players set 10000 slime_const 10000
#subtracts this mobs health score based on its missing health from 1000
execute store result score #tempdmg hardg_var run data get entity @s Health 10
scoreboard players operation #tempmhealth hardg_var = @s hardg_maxhealth
scoreboard players operation #tempdmg hardg_var -= 10000 slime_const
execute store result score @s hardg_health run scoreboard players operation #tempmhealth hardg_var += #tempdmg hardg_var

#damage dealt
scoreboard players operation #storehealth hardg_var -= @s hardg_health
scoreboard players operation @s hardg_damage = #storehealth hardg_var

#SFX
execute unless score @s hardg_health matches ..0 if score #storehealth hardg_var matches 1.. run playsound minecraft:entity.player.hurt player @a ~ ~ ~ 0.7 1.2
execute if score @s hardg_health matches ..0 if score #storehealth hardg_var matches 1.. run playsound minecraft:entity.player.hurt player @a ~ ~ ~ 0.7 0.7




#RESETS
scoreboard players reset #tempdmg hardg_var
scoreboard players reset #tempmhealth hardg_var
scoreboard players reset #storehealth hardg_var

#ADD TAG
tag @s add _hardg-hurt
