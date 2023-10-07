
#GENERATES ARROWS
scoreboard players set @s[scores={arrowcount=..-1}] arrowcount 0
execute if score @s arrowtimer < @s arrowdelay if score @s arrowcount < @s maxarrows run scoreboard players add @s arrowtimer 1
execute if score @s arrowtimer >= @s arrowdelay run function cmd:player/arrowcount/givearrow
