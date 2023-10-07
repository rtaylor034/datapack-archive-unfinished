#>slimec:internal/array/find
#--------------------
# - api/admin/getinstallcommands
# - api/pack/install
#--------------------

#in {var -> find.array}
#in {var -> find.match}
#out {var -> find.found}

#out init
data modify storage slimec:var find.found set value []

#foreach loop
execute store result score $find-i slimec_var if data storage slimec:var find.array[]
execute if score $find-i slimec_var matches 1.. run function slimec:internal/array/findloop

#RESET
scoreboard players reset $find-i slimec_var
scoreboard players reset $find-keep slimec_var