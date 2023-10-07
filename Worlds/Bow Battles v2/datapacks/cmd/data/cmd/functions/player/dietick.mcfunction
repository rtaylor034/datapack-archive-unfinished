
#CALLED ON TICK OF DEATH
#SCORES
scoreboard players set @s playerstate 2
scoreboard players operation @s respawntimer = @s respawntime

#EFFECT
particle poof ~ ~1 ~ 0.3 0.5 0.3 0.05 15 force
particle minecraft:instant_effect ~ ~30 ~ 0 30 0 1 100 force

#NEXUS BOW DROP
execute as @s[tag=hasnb] run function cmd:game/standard/nexusbow/drop

#GM
execute at @s run tp @s ~ ~.5 ~
gamemode spectator



#REMOVE
scoreboard players set @s dietick 0
