
#GENERAL SCOREBOARDS
scoreboard objectives add xphealth_prevxp dummy
scoreboard objectives add xphealth_prevhealth dummy
scoreboard objectives add xphealth_xpT xp
scoreboard objectives add xphealth_score dummy
scoreboard objectives add xphealth_timer dummy
scoreboard objectives add xphealth_healthT health
scoreboard objectives add xphealth_foodT food
scoreboard objectives add xphealth_armorT armor
scoreboard objectives add xphealth_global dummy
scoreboard objectives add xphealth_deathtimer dummy
scoreboard objectives add xphealth_genscore dummy

#controls
function xphealth:controls

#itemregistry
function xphealth:itemregistry

#global thresholds
execute store result score incr slime_var run data get storage xphealth:controls maxSeconds 5
execute store result score over slime_var run data get storage xphealth:controls overloadSeconds 20
scoreboard players set val slime_var 0
execute store result score score_thresh1 xphealth_global run scoreboard players operation val slime_var += incr slime_var
execute store result score score_thresh2 xphealth_global run scoreboard players operation val slime_var += incr slime_var
execute store result score score_thresh3 xphealth_global run scoreboard players operation val slime_var += incr slime_var
execute store result score score_thresh4 xphealth_global run scoreboard players operation val slime_var += incr slime_var
execute store result score score_thresh5 xphealth_global run scoreboard players operation val slime_var += over slime_var
execute store result score lapis_thresh xphealth_global run data get storage xphealth:controls lapisSeconds 20


#gamerules
gamerule naturalRegeneration false


#MESSAGE
#requires SlimeCore
execute if score installed slime_global matches 1.. run tellraw @a {"color":"gray","text":"XP Health - Loaded"}
execute unless score installed slime_global matches 1.. run tellraw @a {"color":"red","text":"XP Health failed to load. (Please install the SlimeCore datapack)"}
