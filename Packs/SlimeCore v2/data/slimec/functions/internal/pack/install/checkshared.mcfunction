#>slimec:internal/pack/install/checkshared
#--------------------
# - internal/pack/install/dupecheck
# @self
#--------------------

#check
execute store success score $install-shared slimec_var run data modify storage slimec:var install.shared[0] set from storage slimec:in install.namespace
execute if score $install-shared slimec_var matches 0 run scoreboard players set $install-shared slimec_var 1

#loop
data remove storage slimec:var install.shared[0]
execute unless score $install-shared slimec_var matches 1 if data storage slimec:var install.shared[] run function slimec:internal/pack/install/checkshared