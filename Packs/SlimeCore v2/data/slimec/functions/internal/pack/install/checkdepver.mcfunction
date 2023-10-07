#>slimec:internal/pack/install/checkdepver
#--------------------
# - internal/pack/install/foreachdep
#--------------------

execute store result score $install-reqver slimec_var run data get storage slimec:var install.packcheck[0].version
execute store result score $install-curver slimec_var run data get storage slimec:var find.found[0].version
execute if score $install-curver slimec_var < $install-reqver slimec_var run data modify storage slimec:var install.requpdate prepend from storage slimec:var install.packcheck[0]

execute if score $install-curver slimec_var < $install-reqver slimec_var run data modify storage slimec:var install.requpdate[0].current set from storage slimec:var find.found[0].version