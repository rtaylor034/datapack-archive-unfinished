#>slimec:internal/array/findloop
#--------------------
# - internal/array/find
#--------------------

#decriment
scoreboard players remove $find-i slimec_var 1

#temp storage
data modify storage slimec:var find.e set from storage slimec:var find.array[0]

#compare
execute store success score $find-keep slimec_var run data modify storage slimec:var find.e merge from storage slimec:var find.match

#add to array if found
execute if score $find-keep slimec_var matches 0 run data modify storage slimec:var find.found append from storage slimec:var find.array[0]

#cycle
data remove storage slimec:var find.array[0]

#loop
execute if score $find-i slimec_var matches 1.. run function slimec:internal/array/findloop
