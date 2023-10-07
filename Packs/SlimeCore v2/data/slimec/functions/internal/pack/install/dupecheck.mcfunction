#>slimec:internal/pack/install/dupecheck
#--------------------
# - api/pack/install
#--------------------

#name mismatch
data modify storage slimec:var install.compare set from storage slimec:in install.name
execute store success score $install-mismatch slimec_var unless score $install-shared slimec_var matches 1 run data modify storage slimec:var install.compare set from storage slimec:var install.dupe.name
execute if score $install-mismatch slimec_var matches 1 run return 0

#version update
execute store result score $install-ver slimec_var run data get storage slimec:in install.version
execute store result score $install-prever slimec_var run data get storage slimec:var install.dupe.version
execute if score $install-ver slimec_var > $install-prever slimec_var run function slimec:internal/pack/install/update
execute if score $install-ver slimec_var < $install-prever slimec_var run data modify storage slimec:var install.badver set from storage slimec:in install