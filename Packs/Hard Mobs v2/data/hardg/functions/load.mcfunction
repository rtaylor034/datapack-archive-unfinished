
#GENERAL SCOREBOARDS
scoreboard objectives add hardg_var dummy
scoreboard objectives add hardg_timer1 dummy
scoreboard objectives add hardg_timer2 dummy
scoreboard objectives add hardg_control dummy


#SPECIFICS
scoreboard objectives add hardg_maxhealth dummy
scoreboard objectives add hardg_health dummy
scoreboard objectives add hardg_damage dummy


#controls
function hardg:controls


#MESSAGE
#requires SlimeCore
execute if score installed slime_global matches 1.. run tellraw @a {"color":"gray","text":"Hard G - Loaded"}
execute unless score installed slime_global matches 1.. run tellraw @a {"color":"red","text":"Hard G failed to load. (Please install the SlimeCore datapack)"}
