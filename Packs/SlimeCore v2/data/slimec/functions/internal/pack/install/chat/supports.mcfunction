#>slimec:internal/pack/install/chat/supports
#--------------------
# - slimec:internal/pack/install/chat/report
#--------------------

execute store result score $install-suptrue slimec_var if data storage slimec:var install.supporttrue[]
execute store result score $install-sups slimec_var if data storage slimec:in install.supports[]

execute if score $install-suptrue slimec_var < $install-sups slimec_var run data modify storage slimec:var install.chat.suptext set value '["",{"text":"Supports: ","color":"gray"},{"score":{"name":"$install-suptrue","objective":"slimec_var"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"$install-sups","objective":"slimec_var"},"color":"gray"}]'
execute if score $install-suptrue slimec_var matches 0 run data modify storage slimec:var install.chat.suptext set value '["",{"text":"Supports: ","color":"dark_gray"},{"score":{"name":"$install-suptrue","objective":"slimec_var"},"color":"dark_gray"},{"text":"/","color":"dark_gray"},{"score":{"name":"$install-sups","objective":"slimec_var"},"color":"dark_gray"}]'
execute if score $install-suptrue slimec_var = $install-sups slimec_var run data modify storage slimec:var install.chat.suptext set value '["",{"text":"Supports: ","color":"green"},{"score":{"name":"$install-suptrue","objective":"slimec_var"},"color":"green"},{"text":"/","color":"green"},{"score":{"name":"$install-sups","objective":"slimec_var"},"color":"green"}]'

tellraw @a ["",{"nbt":"install.chat.more","storage":"slimec:var","interpret":true},{"nbt":"install.chat.suptext","storage":"slimec:var","interpret":true,"clickEvent":{"action":"suggest_command","value":"/function slimec:api/admin/showpacks"},"hoverEvent":{"action":"show_text","contents":[{"text":"run ","color":"dark_aqua"},{"text":"[api/admin/showpacks]","color":"light_purple"},{"text":" for details","color":"dark_aqua"}]}}]