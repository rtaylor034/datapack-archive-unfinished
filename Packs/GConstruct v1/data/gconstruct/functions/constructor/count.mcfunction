
#SCORE
scoreboard players remove @s gcon_ccount 1

#REMOVE 1 FROM COUNT
execute store result score #conc gcon_local run data get storage gconstruct:con/itemarr Items[0].Count
scoreboard players remove #conc gcon_local 1
execute store result storage gconstruct:con/itemarr Items[0].Count int 1 run scoreboard players get #conc gcon_local

#CYCLE
data modify storage gconstruct:con/itemarr Items append from storage gconstruct:con/itemarr Items[0]
data remove storage gconstruct:con/itemarr Items[0]

#RECUR
execute as @s[scores={gcon_ccount=1..}] at @s run function gconstruct:constructor/count
