
#GENERAL SCOREBOARDS
scoreboard objectives add slime_var dummy
scoreboard objectives add slime_param dummy
scoreboard objectives add slime_out dummy
scoreboard objectives add slime_playerid dummy
scoreboard objectives add slime_const dummy
scoreboard objectives add slime_rejoin minecraft.custom:minecraft.leave_game
scoreboard objectives add slime_joined dummy


#TRACKER
scoreboard objectives add slime_trackcount dummy

#MESSAGE
tellraw @a {"color":"gray","text":"SlimeCore - Loaded"}

#CONTROLS
function slime:controls

#INSTALLED CHECK
scoreboard objectives add slime_global dummy
scoreboard players set installed slime_global 1
