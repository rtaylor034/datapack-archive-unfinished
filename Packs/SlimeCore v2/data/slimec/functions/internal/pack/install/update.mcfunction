#>slimec:internal/pack/install/update
#--------------------
# - internal/pack/install/dupecheck
#--------------------

#remove outdated version & append new
data modify storage slimec:var install.firstelement set from storage slimec:data datapacks.installed[0]
data remove storage slimec:var cycleto.array[0]
data modify storage slimec:var cycleto.array append from storage slimec:in install

#set back to initial order
data modify storage slimec:var cycleto.match set from storage slimec:var install.firstelement
function slimec:internal/array/cycleto
data modify storage slimec:data datapacks.installed set from storage slimec:var cycleto.array

scoreboard players set $install-updated slimec_var 1