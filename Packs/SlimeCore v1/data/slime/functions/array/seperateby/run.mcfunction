#IN - A [seperateby.array -> slime:param ; Array<Obj>], B [seperateby.seperator -> slime:param ; Obj] | array, seperator
#OUT - [seperateby.out -> slime:out ; Array<Obj>] | array with seperators

#USE - Inserts [B] inbetween every element of [A] and returns it in {OUT}.

#NOTE - object types of [A] and [B] must match.

#FOREACH
execute store result score seperateby.i slime_var if data storage slime:param seperateby.array[]
execute if score seperateby.i slime_var matches 1.. run function slime:array/seperateby/foreach

#SET OUTPUT
data modify storage slime:out seperateby.out set from storage slime:param seperateby.array

#RESET
scoreboard players reset seperateby.i slime_var
data remove storage slime:param seperateby
data remove storage slime:var seperateby
