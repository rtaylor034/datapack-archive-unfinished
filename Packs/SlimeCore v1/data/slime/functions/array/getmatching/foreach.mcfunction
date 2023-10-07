

#DECRIMENT
scoreboard players remove getmatching.i slime_var 1



#INPUT INTO STORAGE NBT
data modify storage slime:var getmatching.find set from storage slime:param getmatching.array[0]

#COMPARE
execute store success score getmatching.keep slime_var run data modify storage slime:var getmatching.find merge from storage slime:param getmatching.tag

#add to array if found
execute if score getmatching.keep slime_var matches 0 run data modify storage slime:out getmatching.out append from storage slime:param getmatching.array[0]


#CYCLE
data modify storage slime:param getmatching.array append from storage slime:param getmatching.array[0]
data remove storage slime:param getmatching.array[0]


execute if score getmatching.i slime_var matches 1.. run function slime:array/getmatching/foreach
