#>slimec:internal/pack/install/chat/foreachupdep
#--------------------
# - slimec:internal/pack/install/chat/report
#--------------------


tellraw @a ["",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"text":"- ","color":"gray"},{"nbt":"install.requpdate[0].name","storage":"slimec:var","color":"gold"},{"text":" [","color":"dark_aqua"},{"nbt":"install.requpdate[0].namespace","storage":"slimec:var","color":"dark_aqua"},{"text":"] ","color":"dark_aqua"},{"text":"Version: ","color":"gray"},{"nbt":"install.requpdate[0].current","storage":"slimec:var","color":"yellow"},{"text":" >> ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"The current version is ","color":"dark_aqua"},{"nbt":"install.requpdate[0].current","storage":"slimec:var","color":"yellow"},{"text":" but must be ","color":"dark_aqua"},{"nbt":"install.requpdate[0].version","storage":"slimec:var","color":"yellow"},{"text":" or greater ","color":"dark_aqua"}]}},{"nbt":"install.requpdate[0].version","storage":"slimec:var","color":"yellow"}]
tellraw @a ["",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"nbt":"install.requpdate[0].downloadmessage","storage":"slimec:var","interpret":true,"italic":true}]

#loop
data remove storage slimec:var install.requpdate[0]
execute if data storage slimec:var install.requpdate[0] run function slimec:internal/pack/install/chat/foreachupdep