

#DECRIMENT
scoreboard players remove seperateby.i slime_var 1

#ADD SEPERATOR
execute if score seperateby.i slime_var matches 1.. run function slime:array/seperateby/seperate

#CYCLE
data modify storage slime:param seperateby.array append from storage slime:param seperateby.array[0]
data remove storage slime:param seperateby.array[0]

#LOOP
execute if score seperateby.i slime_var matches 1.. run function slime:array/seperateby/foreach
