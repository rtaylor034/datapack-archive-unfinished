
#GENERATES GOLD
scoreboard players set @s[scores={gold=..-1}] gold 0
execute if score @s goldtimer < @s goldrate run scoreboard players add @s goldtimer 1
execute if score @s goldtimer >= @s goldrate run function cmd:player/gold/gengold
