

#DECRIMENT
scoreboard players remove spawn.div10 hardg_var 1

#DIV 10
execute store result storage hardg:var spawn.a.Base double 0.000001 run data get storage hardg:var spawn.a.Base 100000
#tellraw @a {"nbt":"spawn.a.Base","storage":"hardg:var"}

#LOOP
execute if score spawn.div10 hardg_var matches 1.. run function hardg:spawn/div10
