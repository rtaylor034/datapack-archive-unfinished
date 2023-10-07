#IN - A [mergetoall.array -> slime:param = Array<Obj>], B [mergetoall.tag -> slime:param = NBT] | array, nbt to merge
#IN OPT - c [mergetoall.condition -> slime:param = NBT] | condition
#OUT - [mergetoall.out -> slime:out = Array<Obj>] | array with added tags

#USE - merges nbt specified in [B] to all elements in [A] and returns the array in {OUT}. if [c] is specified, will only merge [B] nbt to elements matching nbt with [c]. (similar to cycleto)

#NOTE - [B] must be an object with at least 1 nbt tag (tag:{somedata:"example"})

#FOREACH
execute store result score mergetoall.i slime_var if data storage slime:param mergetoall.array[]
execute if score mergetoall.i slime_var matches 1.. run function slime:array/mergetoall/foreach

#SET OUTPUT
data modify storage slime:out mergetoall.out set from storage slime:param mergetoall.array

#RESET
scoreboard players reset mergetoall.i slime_var
scoreboard players reset mergetoall.keep slime_var
data remove storage slime:param mergetoall
data remove storage slime:var mergetoall
