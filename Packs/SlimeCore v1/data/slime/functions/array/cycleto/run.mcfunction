#IN - A [cycleto.array -> slime:param ; Array<Obj>], B [cycleto.tag -> slime:param ; NBT Obj] | array, search tag
#OUT - A [cycleto.out -> slime:out = Array<Obj>], B (cycleto.success -> slime_out) | cycled array, success

#USE - cycles the [A] array to the matching tag specified in [B] using data merge and stores it in {OUT A}. {OUT B} will return 1 if an object with a matching id is found, and return 0 if its not.

#NOTE - The found element will be the first element of {OUT A} ({OUT A}[0])
#NOTE - if [A] has multiple matching elements, this method will cycle to the element nearest to the front of the array (lowest index).
#NOTE - [B] must be an object with at least 1 nbt tag (tag:{somedata:"example"})


#ARRAY LENGTH -> (cycleto.i)
execute store result score cycleto.i slime_var if data storage slime:param cycleto.array[]

#cycle to object
execute if score cycleto.i slime_var matches 1.. run function slime:array/cycleto/foreach
scoreboard players set cycleto.success slime_out 0
execute if score cycleto.keep slime_var matches 0 run scoreboard players set cycleto.success slime_out 1

#SET OUTPUT
data modify storage slime:out cycleto.out set from storage slime:param cycleto.array

#RESET
scoreboard players reset cycleto.i slime_slime_var
scoreboard players reset cycleto.keep slime_var
data remove storage slime:var cycleto
data remove storage slime:param cycleto
