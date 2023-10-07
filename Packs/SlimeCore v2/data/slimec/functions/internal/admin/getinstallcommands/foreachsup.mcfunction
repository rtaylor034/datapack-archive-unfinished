#>slimec:internal/admin/getinstallcommands/foreachsup
#--------------------
# - api/admin/getinstallcommands
# @self
#--------------------

#temp storage
data modify storage slimec:var find.array set from storage slimec:data datapacks.installed
data modify storage slimec:var find.match.namespace set from storage slimec:in getinstallcommands.supports[0]

function slimec:internal/array/find

#return 0 if dependency not found
execute unless data storage slimec:var find.found[0] run scoreboard players set $getinstallcommands-supfind slimec_var 1
execute unless data storage slimec:var find.found[0] run return 0
#add packinfo
data modify storage slimec:var getinstallcommands.pack.supports append from storage slimec:var find.found[0]


#cycle
data remove storage slimec:in getinstallcommands.supports[0]

#loop
execute if data storage slimec:in getinstallcommands.supports[] run function slimec:internal/admin/getinstallcommands/foreachsup