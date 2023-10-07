#IN - (@s -> xphealth_score) score
#OUT - N/A

#USE - displays this players score on their XP bar

execute store result score maxScore slime_var run data get storage xphealth:controls maxSeconds 20

#ratio to 101 calc
scoreboard players set percent slime_var 101
scoreboard players operation percent slime_var *= @s xphealth_score
scoreboard players operation percent slime_var /= maxScore slime_var

#CALL - [SlimeCore]
execute store result storage slime:param set.level int 0.05 run scoreboard players get @s xphealth_score
function slime:player/xpbar/set/run

#RESETS
scoreboard players reset percent slime_var
scoreboard players reset maxScore slime_var
