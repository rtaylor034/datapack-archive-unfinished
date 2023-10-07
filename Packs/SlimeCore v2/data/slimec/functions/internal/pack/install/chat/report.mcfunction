#>slimec:internal/pack/install/chat/report
#--------------------
# - api/pack/install
#--------------------

#sends the pack install message to chat
data modify storage slimec:var install.chat.start set value '["",{"text":">","color":"aqua"},{"text":" SlimeCore Loader : ","color":"#385AE0"}]'
data modify storage slimec:var install.chat.more set value '["",{"text":"*  ","color":"gray"}]'

#status set
execute if score $install-success slimec_out matches 1 run data modify storage slimec:var install.chat.status set value '["",{"text":"Success","color":"dark_green"}]'
execute unless score $install-success slimec_out matches 1 run data modify storage slimec:var install.chat.status set value '["",{"text":"Failed","color":"red"}]'
execute if score $install-success slimec_out matches 1 if score $install-force slimec_var matches 1 run data modify storage slimec:var install.chat.status set value '{"text":"Forced","bold":false,"color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Install/re-install was forced: ","color":"dark_aqua"},{"text":"{settings -> forceInstall}","color":"blue"},{"text":" is set to ","color":"dark_aqua"},{"text":"true","color":"blue"}]}}'
execute unless score $install-success slimec_out matches 1 if score $install-force slimec_var matches 1 run data modify storage slimec:var install.chat.status set value '{"text":"Forced","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Failed install/re-install was forced: ","color":"dark_aqua"},{"text":"{settings -> forceInstall}","color":"blue"},{"text":" is set to ","color":"dark_aqua"},{"text":"true","color":"blue"}]}}'

#main status message
tellraw @a ["",{"nbt":"install.chat.start","storage":"slimec:var","interpret":true},{"nbt":"install.name","storage":"slimec:in","color":"yellow"},{"text":" [","color":"dark_aqua"},{"nbt":"install.namespace","storage":"slimec:in","color":"dark_aqua"},{"text":" v","color":"dark_aqua"},{"nbt":"install.version","storage":"slimec:in","color":"dark_aqua"},{"text":"]","color":"dark_aqua"},{"text":" - ","color":"gray"}, {"nbt":"install.chat.status","storage":"slimec:var","interpret":true}]

#-additional info--

#shared
execute if score $install-shared slimec_var matches 1 run tellraw @a ["",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"nbt":"install.namespace","storage":"slimec:in","interpret":false,"color":"dark_gray","bold":true},{"text":" is a shared namespace","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"\"","color":"dark_aqua"},{"nbt":"install.namespace","storage":"slimec:in","color":"light_purple"},{"text":"\" is an element of ","color":"dark_aqua"},{"text":"{settings -> sharedNamespaces}","color":"blue"}]}}]

#update dependencies
execute if data storage slimec:var install.requpdate[] run tellraw @a ["",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"text":"The following dependencies must be updated:","color":"red"}]
execute if data storage slimec:var install.requpdate[] run function slimec:internal/pack/install/chat/foreachupdep

#install dependencies
execute if data storage slimec:var install.reqinstall[] run tellraw @a ["",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"text":"The following dependencies must be installed:","color":"red"}]
execute if data storage slimec:var install.reqinstall[] run function slimec:internal/pack/install/chat/foreachinstdep

#updated
execute if score $install-updated slimec_var matches 1 run tellraw @a ["",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"text":"Updated version: ","color":"dark_aqua"},{"score":{"name":"$install-prever","objective":"slimec_var"},"color":"green"},{"text":" >> ","color":"green"},{"score":{"name":"$install-ver","objective":"slimec_var"},"color":"green"}]

#namespace clash
execute if score $install-mismatch slimec_var matches 1 run tellraw @a ["",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"text":"Namespace \"","bold":true,"color":"dark_red"},{"nbt":"install.namespace","storage":"slimec:in","color":"dark_red"},{"text":"\" clashes with ","bold":true,"color":"dark_red"},{"nbt":"install.dupe.name","storage":"slimec:var","bold":true,"color":"gold"},"\n",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"text":"This can be resolved by adding \"","color":"dark_aqua"},{"nbt":"install.namespace","storage":"slimec:in","color":"dark_aqua"},{"text":"\" to ","color":"dark_aqua"},{"text":"{settings -> sharedNamespaces}","color":"blue"}]

#bad version/dupe
execute if data storage slimec:var install.badver run tellraw @a ["",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"text":"Older version of an already installed pack","bold":true,"color":"dark_red"},"\n",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"text":"(Remove this version from the datapacks folder, but do ","color":"dark_aqua","italic":true},{"text":"NOT","bold":true,"color":"red","italic":true},{"text":" run any uninstallation functions)","color":"dark_aqua","italic":true}]

#supports
execute if data storage slimec:in install.supports[] if score $install-success slimec_out matches 1 run function slimec:internal/pack/install/chat/supports
