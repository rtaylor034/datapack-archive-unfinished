
#\gets a random integer between 0 and (math -> randmax) and stores it in (math -> mathrand)\

#\set "randmax" on player "math" to whatever number you want the max int to be before using (defualt is 32767)\
#\To set to defualt, set "randmax" to -1\


execute unless score math randmax matches -1 run scoreboard players add math randmax 1
scoreboard players set math mathrand 0

scoreboard players set math maxbit 32767

execute if predicate cmd:halfchance run scoreboard players add math mathrand 1
execute if predicate cmd:halfchance run scoreboard players add math mathrand 2
execute if predicate cmd:halfchance run scoreboard players add math mathrand 4
execute if predicate cmd:halfchance run scoreboard players add math mathrand 8
execute if predicate cmd:halfchance run scoreboard players add math mathrand 16
execute if predicate cmd:halfchance run scoreboard players add math mathrand 32
execute if predicate cmd:halfchance run scoreboard players add math mathrand 64
execute if predicate cmd:halfchance run scoreboard players add math mathrand 128
execute if predicate cmd:halfchance run scoreboard players add math mathrand 256
execute if predicate cmd:halfchance run scoreboard players add math mathrand 512
execute if predicate cmd:halfchance run scoreboard players add math mathrand 1024
execute if predicate cmd:halfchance run scoreboard players add math mathrand 2048
execute if predicate cmd:halfchance run scoreboard players add math mathrand 4096
execute if predicate cmd:halfchance run scoreboard players add math mathrand 8192
execute if predicate cmd:halfchance run scoreboard players add math mathrand 16384


execute unless score math randmax matches -1 run scoreboard players operation math mathrand *= math randmax
execute unless score math randmax matches -1 run scoreboard players operation math mathrand /= math maxbit
execute unless score math randmax matches -1 run scoreboard players remove math randmax 1



#FOR DEV CHECKING VALUE
#\execute store result score @s dlog run scoreboard players get math mathrand
#\tellraw @a {"score":{"name":"@s","objective":"dlog"}}