

#DECRIMENT
scoreboard players remove mergetoall.i slime_var 1

#ADD TAG
execute unless data storage slime:param mergetoall.condition run data modify storage slime:param mergetoall.array[0] merge from storage slime:param mergetoall.tag
execute if data storage slime:param mergetoall.condition run function slime:array/mergetoall/condition



#CYCLE
data modify storage slime:param mergetoall.array append from storage slime:param mergetoall.array[0]
data remove storage slime:param mergetoall.array[0]

#LOOP
execute if score mergetoall.i slime_var matches 1.. run function slime:array/mergetoall/foreach
