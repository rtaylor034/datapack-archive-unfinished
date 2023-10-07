#CALL: player/main
#Called when this player has a change in their xp value


#calc diff
execute store result score diff slime_var run scoreboard players operation @s xphealth_prevhealth -= @s xphealth_healthT
execute if score diff slime_var matches ..-1 run scoreboard players set diff slime_var 0

#subtract score
execute store result score mult slime_var run data get storage xphealth:controls ticksPerHealth
scoreboard players operation mult slime_var *= diff slime_var
scoreboard players operation @s xphealth_score -= mult slime_var
scoreboard players set @s[scores={xphealth_score=..-1}] xphealth_score 0

#death
execute as @s[tag=!xphealth-dying,scores={xphealth_score=0,xphealth_healthT=1..}] run function xphealth:player/death/start
execute as @s[tag=!xphealth-dying,scores={xphealth_score=0,xphealth_healthT=..0}] run function xphealth:player/death/die


#display
function xphealth:player/displayscore/run

#prevcheck update
scoreboard players operation @s xphealth_prevhealth = @s xphealth_healthT

#effects
effect give @s instant_health 1 100 true


#RESETS
scoreboard players reset diff slime_var
scoreboard players reset mult slime_var
