#called from alive players at y=2
#zones are identified by the block at y=2

scoreboard players set @s zone 0
#HOTZONE
execute if block ~ 2 ~ orange_wool run scoreboard players set @s zone 1
#BLUE BASE
execute if block ~ 2 ~ blue_wool run scoreboard players set @s zone 2
#RED BASE
execute if block ~ 2 ~ red_wool run scoreboard players set @s zone 3
#BLUE SHOP
execute if block ~ 2 ~ blue_concrete run scoreboard players set @s zone 4
#RED SHOP
execute if block ~ 2 ~ red_concrete run scoreboard players set @s zone 5
