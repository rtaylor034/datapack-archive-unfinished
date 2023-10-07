#IN - A [getmatching.array -> slime:param = Array<Obj>], B [getmatching.tag -> slime:param = NBT Obj] | array, search tag
#OUT - A [getmatching.out -> slime:out = Array<Obj>] B (getmatching.success -> slime_var) | array of matching elements, array length

#USE - finds all elements of [A] that match the search tag specified in [B], and returns them as an array in {OUT A}. {OUT B} will return 1 if any matching elements are found, and 0 if not.

#NOTE - (IN B) must be an object with at least 1 nbt tag (tag:{somedata:"example"})
#NOTE - (OUT A) has the elements in the same order as (IN A), just with the non-matching elements removed.

#NOTE - this process resets its inputs after use
#/TODO: Add inverse parameter or out (array of elements that do NOT match).


#out init
data modify storage slime:out getmatching.out set value []

#foreach loop
execute store result score getmatching.i slime_var if data storage slime:param getmatching.array[]
execute if score getmatching.i slime_var matches 1.. run function slime:array/getmatching/foreach

#SET OUTPUT
execute store result score getmatching.success slime_out if data storage slime:out getmatching.out[]

#RESET
scoreboard players reset getmatching.i slime_var
scoreboard players reset getmatching.keep slime_var
data remove storage slime:var getmatching
data remove storage slime:param getmatching
