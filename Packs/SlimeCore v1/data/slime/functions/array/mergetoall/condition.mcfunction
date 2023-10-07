

#INPUT INTO STORAGE NBT
data modify storage slime:var mergetoall.find set from storage slime:param mergetoall.array[0]

#COMPARE
execute store success score mergetoall.keep slime_var run data modify storage slime:var mergetoall.find merge from storage slime:param mergetoall.condition

#add to array if found
execute if score mergetoall.keep slime_var matches 0 run data modify storage slime:param mergetoall.array[0] merge from storage slime:param mergetoall.tag
