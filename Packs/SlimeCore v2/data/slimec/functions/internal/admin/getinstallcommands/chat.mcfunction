#>slimec:internal/admin/getinstallcommands/chat
#--------------------
# - api/admin/getinstallcommands
#--------------------

tellraw @s {"text":"#-SlimeCore Install--","color":"dark_gray"}
tellraw @s ["",{"text":"data modify storage slimec:in install set value ","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Copy these commands using the game output window.","bold":true}]}},{"nbt":"getinstallcommands.pack","storage":"slimec:var","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Copy these commands using the game output window.","bold":true}]}}]
tellraw @s {"text":"function slimec:api/pack/install","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Copy these commands using the game output window.","bold":true}]}}
tellraw @s {"text":"execute unless data storage slimec:out install.runcheck run tellraw @s [\"\",{\"text\":\"A datapack that is trying to load requires the \",\"color\":\"red\"},{\"text\":\"SlimeCore\",\"color\":\"#385AE0\"},{\"text\":\" datapack to function.\",\"color\":\"red\"},\"\\n\",{\"text\":\"(download SlimeCore)\",\"underlined\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"open_url\",\"value\":\"https://www.minecraftjson.com\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"(Clickable Link)\",\"color\":\"gray\"}]}}]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Copy these commands using the game output window.","bold":true}]}}
tellraw @s ["",{"text":"execute unless data storage slimec:out install.runcheck run return 0","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Copy these commands using the game output window.","bold":true}]}}]
tellraw @s ["",{"text":"execute unless score $install-success slimec_out matches 1 run return 0","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Copy these commands using the game output window.","bold":true}]}}]
tellraw @s {"text":"#--------------------","color":"dark_gray"}