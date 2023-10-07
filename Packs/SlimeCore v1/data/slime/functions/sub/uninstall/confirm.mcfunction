
#CALL - sub/uninstall: prompt, promptwarn -> from player text click

#GENERAL SCOREBOARDS
scoreboard objectives remove slime_var
scoreboard objectives remove slime_param
scoreboard objectives remove slime_out
scoreboard objectives remove slime_playerid
scoreboard objectives remove slime_const
scoreboard objectives remove slime_rejoin
scoreboard objectives remove slime_joined

#TRACKERS
scoreboard objectives remove slime_trackcount
kill @e[tag=slime-tracker]



#MESSAGE
tellraw @a ["",{"text":"SlimeCore","bold":false,"color":"light_purple"},{"text":" has been uninstalled.","color":"light_purple"}]
tellraw @a ["",{"text":"Please remove or disable the datapack before reloading.","bold":true,"color":"dark_purple"}]

#INSTALLED CHECK
scoreboard objectives remove slime_global
