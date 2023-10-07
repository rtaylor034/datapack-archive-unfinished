#>slimec:internal/pack/install/foreachdep
#--------------------
# - api/pack/install
# @self
#--------------------

#find pack
data modify storage slimec:var find.array set from storage slimec:data datapacks.installed
data modify storage slimec:var find.match.namespace set from storage slimec:var install.packcheck[0].namespace
function slimec:internal/array/find

#check installed
execute unless data storage slimec:var find.found[] run data modify storage slimec:var install.reqinstall append from storage slimec:var install.packcheck[0]

#check version
execute if data storage slimec:var find.found[] run function slimec:internal/pack/install/checkdepver

#cycle
data remove storage slimec:var install.packcheck[0]

#loop
execute if data storage slimec:var install.packcheck[] run function slimec:internal/pack/install/foreachdep