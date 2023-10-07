#>slimec:internal/pack/install/forceinstall
#--------------------
# - api/pack/install
#--------------------

#find any dupe
data modify storage slimec:var cycleto.array set from storage slimec:data datapacks.installed
data modify storage slimec:var cycleto.match.namespace set from storage slimec:in install.namespace
function slimec:internal/array/cycleto

#remove dupe if found
execute if data storage slimec:var cycleto.success run data remove storage slimec:var cycleto.array[0]

#install
data modify storage slimec:var cycleto.array append from storage slimec:in install
data modify storage slimec:data datapacks.installed set from storage slimec:var cycleto.array
