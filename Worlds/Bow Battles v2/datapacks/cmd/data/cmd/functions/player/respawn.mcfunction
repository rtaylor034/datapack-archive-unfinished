
#called when player reachers respawntimer 0 after they die


#SCORES
scoreboard players set @s playerstate 1

#GM
gamemode survival @s

#RESPAWN DESTINATION
execute as @s[team=red] run tp @s @e[type=area_effect_cloud,tag=redspawn,limit=1]
execute as @s[team=blue] run tp @s @e[type=area_effect_cloud,tag=bluespawn,limit=1]
