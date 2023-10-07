#CALL firstjoin, player/death/die

#reset
scoreboard players set @s xphealth_genscore 0
execute store result score @s xphealth_score run data get storage xphealth:controls startingSeconds 20
execute store result score @s xphealth_timer run data get storage xphealth:controls updateInterval

#prevcheck safety
scoreboard players operation @s xphealth_prevxp = @s xphealth_xpT
scoreboard players operation @s xphealth_prevhealth = @s xphealth_healthT
