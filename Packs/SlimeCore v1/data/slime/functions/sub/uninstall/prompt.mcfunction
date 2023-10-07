
#CALL - uninstall

tellraw @s ["","\n",{"text":" - - - ","color":"dark_aqua"},"\n\n",{"text":"Please confirm the uninstallation of SlimeCore library.","color":"gold"},{"text":"\nThis will remove all related scoreboards, entities, and (most) storage data.","color":"gray","italic":true}, "\n\n",{"text":"Confirm Uninstall","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function slime:sub/uninstall/confirm"},"hoverEvent":{"action":"show_text","contents":[{"text":"↪","color":"blue"}]}},{"text":" (Click)","bold":false,"color":"dark_gray"},"\n\n",{"text":" - - - ","color":"dark_aqua"}]
