#>slimec:internal/admin/getinstallcommands/remsecdeg
#--------------------
# - api/admin/getinstallcommands
# @self
#--------------------

scoreboard players remove $getinstallcommands-i slimec_var 1

data remove storage slimec:var getinstallcommands.secdeg[0].dependencies
data remove storage slimec:var getinstallcommands.secdeg[0].supports

#cycle
data modify storage slimec:var getinstallcommands.secdeg append from storage slimec:var getinstallcommands.secdeg[0]
data remove storage slimec:var getinstallcommands.secdeg[0]

#loop
execute if data storage slimec:in getinstallcommands.secdeg[0] run function slimec:internal/admin/getinstallcommands/remsecdeg