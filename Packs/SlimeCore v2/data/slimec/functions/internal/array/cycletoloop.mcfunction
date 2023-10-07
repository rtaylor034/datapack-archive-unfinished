#>slimec:internal/array/cycletoloop
#--------------------
# - internal/array/cycleto
#--------------------

#decriment
scoreboard players remove $cycleto-i slimec_var 1

#cycle
data modify storage slimec:var cycleto.array append from storage slimec:var cycleto.array[0]
data remove storage slimec:var cycleto.array[0]

#compare
data modify storage slimec:var cycleto.find set from storage slimec:var cycleto.array[0]
execute store success score $cycleto-keep slimec_var run data modify storage slimec:var cycleto.find merge from storage slimec:var cycleto.match

#loop
execute if score $cycleto-i slimec_var matches 1.. unless score $cycleto-keep slimec_var matches 0 run function slimec:internal/array/cycletoloop
