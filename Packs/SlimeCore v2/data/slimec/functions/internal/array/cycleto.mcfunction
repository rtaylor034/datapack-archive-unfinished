#>slimec:internal/array/cycleto
#--------------------
# - api/pack/install
# - internal/pack/install/update
#--------------------

#in {var -> cycleto.array}
#in {var -> cycleto.match}
#out {var -> cycleto.array}
#out {var -> cycleto.success}

#search
execute store result score $cycleto-i slimec_var if data storage slimec:var cycleto.array[]
execute if score $cycleto-i slimec_var matches 1.. run function slimec:internal/array/cycletoloop

data remove storage slimec:var cycleto.success
execute if score $cycleto-keep slimec_var matches 0 run data modify storage slimec:var cycleto.success set value 1

#RESET
scoreboard players reset $cycleto-i slimec_var
scoreboard players reset $cycleto-keep slimec_var