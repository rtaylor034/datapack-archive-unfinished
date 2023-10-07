#> slimec : api/admin > getinstallcommands
#--------------------
# [E] @s
# -> name : string
# -> namespace : string (namespace)
# -> version : int
# -> downloadmessage : fixed jsonText
# => dependencies : string[] (namespace[]) = [] 
# => supports : string[] (namespace[]) = []
#--------------------
# ...
#--------------------
#> generates the install-commands for the given pack information
#> sends a chat message to <@s> for each command in-order that should be copied via game output window
#--------------------
#- the install-commands should be pasted as the first commands in the given datapack's @LOAD function
#- dependency/support information is taken from the world's currently installed datapacks and versions
#- (i.e. all dependencies/supports of the given pack must be installed before running this function)
#- currently installed versions will be assumed to be the lowest compatible version
#- "slimec" is automatically added as a dependency and should not be included in <dependencies>
#- if <dependencies> or <supports> contain any shared namespaces, manual editing of install-commands may be required to ensure the right packs are included
#--------------------

#defualt in
execute unless data storage slimec:in getinstallcommands.dependencies[] run data modify storage slimec:in getinstallcommands.dependencies set value []
data modify storage slimec:in getinstallcommands.dependencies append value "slimec"
execute unless data storage slimec:in getinstallcommands.supports[] run data modify storage slimec:in getinstallcommands.supports set value []

#var
data modify storage slimec:var getinstallcommands.pack set from storage slimec:in getinstallcommands
data modify storage slimec:var getinstallcommands.pack.dependencies set value []
data modify storage slimec:var getinstallcommands.pack.supports set value []

#dependency gen
execute if data storage slimec:in getinstallcommands.dependencies[] run function slimec:internal/admin/getinstallcommands/foreachdep

#support gen
execute if data storage slimec:in getinstallcommands.supports[] run function slimec:internal/admin/getinstallcommands/foreachsup

#remove 2nd degree sup/deps from deps
data modify storage slimec:var getinstallcommands.secdeg set from storage slimec:var getinstallcommands.pack.dependencies
execute store result score $getinstallcommands-i slimec_var if data storage slimec:var getinstallcommands.secdeg[]
execute if score $getinstallcommands-i slimec_var matches 1.. run function slimec:internal/admin/getinstallcommands/remsecdeg
data modify storage slimec:var getinstallcommands.pack.dependencies set from storage slimec:var getinstallcommands.secdeg

#remove 2nd degree sup/deps from sups
data modify storage slimec:var getinstallcommands.secdeg set from storage slimec:var getinstallcommands.pack.supports
execute store result score $getinstallcommands-i slimec_var if data storage slimec:var getinstallcommands.secdeg[]
execute if score $getinstallcommands-i slimec_var matches 1.. run function slimec:internal/admin/getinstallcommands/remsecdeg
data modify storage slimec:var getinstallcommands.pack.supports set from storage slimec:var getinstallcommands.secdeg

#chat
execute unless score $getinstallcommands-depfind slimec_var matches 1 unless score $getinstallcommands-supfind slimec_var matches 1 run function slimec:internal/admin/getinstallcommands/chat

#fail
execute if score $getinstallcommands-depfind slimec_var matches 1 run tellraw @s ["",{"text":"No datapack installation with namespace ","color":"red"},{"nbt":"getinstallcommands.dependencies[0]","storage":"slimec:in","color":"yellow"},{"text":" could be found.","color":"red"}]
execute if score $getinstallcommands-supfind slimec_var matches 1 run tellraw @s ["",{"text":"No datapack installation with namespace ","color":"red"},{"nbt":"getinstallcommands.supports[0]","storage":"slimec:in","color":"yellow"},{"text":" could be found.","color":"red"}]


#reset
scoreboard players reset $getinstallcommands-depfind slimec_var
scoreboard players reset $getinstallcommands-supfind slimec_var
scoreboard players reset $getinstallcommands-i slimec_var
data remove storage slimec:var getinstallcommands
data remove storage slimec:in getinstallcommands
data remove storage slimec:var find
