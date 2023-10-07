
#\call from player to update their arrow display\

#SAFETY
scoreboard players set @s[scores={arrowcount=..-1}] arrowcount 0


#PERCENTAGE
scoreboard players operation @s arrowperc = @s arrowcount
scoreboard players operation @s arrowperc *= 61 integer
scoreboard players operation @s arrowperc /= @s maxarrows

scoreboard players set @s[scores={arrowperc=62..}] arrowperc 61

#XP BAR
function cmd:player/arrowcount/xpbarcalc

#XP LEVEL
function cmd:player/arrowcount/xplvlcalc

stopsound @s * entity.player.levelup























