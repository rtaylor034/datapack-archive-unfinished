
#GENERAL SCOREBOARDS
scoreboard objectives add gcon_var dummy
scoreboard objectives add gcon_param dummy
scoreboard objectives add gcon_out dummy


#SPECIFICS
scoreboard objectives add gcon_blockid dummy

#controls
function gconstruct:controls

#MESSAGE
#requires SlimeCore
execute if score installed slime_global matches 1.. run tellraw @a {"color":"gray","text":"GConstruct - Loaded"}
execute unless score installed slime_global matches 1.. run tellraw @a {"color":"red","text":"GConstruct failed to load. (Please install the SlimeCore datapack)"}
