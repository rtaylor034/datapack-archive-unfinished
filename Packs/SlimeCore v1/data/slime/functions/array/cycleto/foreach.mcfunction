

#DECRIMENT
scoreboard players remove cycleto.i slime_var 1


#CYCLE
data modify storage slime:param cycleto.array append from storage slime:param cycleto.array[0]
data remove storage slime:param cycleto.array[0]

#INPUT INTO STORAGE NBT
data modify storage slime:var cycleto.find set from storage slime:param cycleto.array[0]

#COMPARE
execute store success score cycleto.keep slime_var run data modify storage slime:var cycleto.find merge from storage slime:param cycleto.tag


execute if score cycleto.i slime_var matches 1.. unless score cycleto.keep slime_var matches 0 run function slime:array/cycleto/foreach
