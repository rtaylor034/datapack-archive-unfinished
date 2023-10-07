
#\called every tick from all dead players (playerstate=2)\

#EFFECT CLEAR
effect clear @s

#SCORES
scoreboard players remove @s respawntimer 1

#RESPAWN
execute as @s[scores={respawntimer=0}] at @s run function cmd:player/respawn
