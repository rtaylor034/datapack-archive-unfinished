#>slimec:internal/pack/install/checksupver
#--------------------
# - internal/pack/install/foreachsup
#--------------------

execute store result score $install-reqver slimec_var run data get storage slimec:var install.supportcheck.version
execute store result score $install-curver slimec_var run data get storage slimec:var find.found[0].version

execute if score $install-curver slimec_var >= $install-reqver slimec_var run data modify storage slimec:var install.supporttrue prepend from storage slimec:var install.supportcheck

execute if score $install-curver slimec_var < $install-reqver slimec_var run data modify storage slimec:var install.supportfalse prepend from storage slimec:var install.supportcheck