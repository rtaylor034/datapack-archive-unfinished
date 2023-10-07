

#\takes the motion data of this entity and stores it in a score\
#\IN - this entities motion\
#\OUT - (@s -> mot<xyz>)\
#\IMPORTANT - Remember to scale the score down (Defualt is .0000001)\

#\example store\
#execute store result entity @s Motion[0] double .0000001 run scoreboard players get math motx

execute store result score @s motx run data get entity @s Motion[0] 10000000
execute store result score @s moty run data get entity @s Motion[1] 10000000
execute store result score @s motz run data get entity @s Motion[2] 10000000
