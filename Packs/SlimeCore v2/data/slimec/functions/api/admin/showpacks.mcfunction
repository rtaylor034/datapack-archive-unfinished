#> slimec : api/admin > showpacks
#--------------------
# [E] @s
# => $page$ = 1
#--------------------
# ...
#--------------------
#> shows an interactive chat menu containing information on all datapacks, of page <page>
#--------------------
#- shows all datapacks
#--------------------

#default in
execute unless score $showpacks-page slimec_in matches 0.. run scoreboard players set $showpacks-page slimec_in 1

#get offset
execute store result score $showpacks-amount slimec_var run data get storage slimec:settings showpacksPageSize
scoreboard players operation $showpacks-offset slimec_var = $showpacks-page slimec_in
scoreboard players operation $showpacks-offset slimec_var *= $showpacks-amount slimec_var

#add installed
data modify storage slimec:var showpacks.queue set from storage slimec:data datapacks.installed
data modify storage slimec:var showpacks.addstatus set value '{"text":"Installed","color":"white"}'
function slimec:internal/admin/showpacks/queue
execute if data storage slimec:var showpacks.queue[0] run scoreboard players set $showpacks-hasmore slimec_var 1

#header
tellraw @s ["",{"text":">","color":"aqua"},{"text":" --- ","color":"dark_aqua"},{"text":"SlimeCore Registered Packs","color":"dark_aqua","bold":true,"clickEvent":{"action":"suggest_command","value":"/function slimec:api/admin/showpacks"},"hoverEvent":{"action":"show_text","contents":[{"text":"shown by running ","color":"dark_aqua"},{"text":"[api/admin/showpacks]","color":"light_purple"}]}},{"text":" ---","color":"dark_aqua"}]

#text constants
data modify storage slimec:var showpacks.chat.more set value '{"text":"*  ","color":"gray"}'

#show packs
execute if data storage slimec:var showpacks.show[0] run function slimec:internal/admin/showpacks/show

data remove storage slimec:var showpacks
data remove storage slimec:in showpacks
data remove storage slimec:var cycleto
scoreboard players reset $showpacks-page slimec_in
scoreboard players reset $showpacks-amount slimec_var
scoreboard players reset $showpacks-hasmore slimec_var
scoreboard players reset $showpacks-offset slimec_var
