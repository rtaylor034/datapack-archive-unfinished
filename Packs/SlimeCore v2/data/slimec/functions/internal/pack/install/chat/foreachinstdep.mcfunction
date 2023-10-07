#>slimec:internal/pack/install/chat/foreachinstdep
#--------------------
# - slimec:internal/pack/install/chat/report
#--------------------


tellraw @a ["",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"text":"- ","color":"gray"},{"nbt":"install.reqinstall[0].name","storage":"slimec:var","color":"gold"},{"text":" [","color":"dark_aqua"},{"nbt":"install.reqinstall[0].namespace","storage":"slimec:var","color":"dark_aqua"},{"text":" v","color":"dark_aqua"},{"nbt":"install.reqinstall[0].version","storage":"slimec:var","color":"dark_aqua"},{"text":"] ","color":"dark_aqua"}]
tellraw @a ["",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"nbt":"install.reqinstall[0].downloadmessage","storage":"slimec:var","interpret":true,"italic":true}]

#loop
data remove storage slimec:var install.reqinstall[0]
execute if data storage slimec:var install.reqinstall[0] run function slimec:internal/pack/install/chat/foreachinstdep