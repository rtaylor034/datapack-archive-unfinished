

execute if data storage slime:global activeDependents[] run function slime:sub/uninstall/promptwarn
execute unless data storage slime:global activeDependents[] run function slime:sub/uninstall/prompt


#tellraw @s ["","\n",{"text":" - - - ","color":"dark_aqua"},"\n\n",{"text":"It is important that you uninstall and remove all datapacks that require SlimeCore before uninstalling SlimeCore itself.","color":"gold"},"\n\n",{"text":"Confirm Uninstall","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function slime:sub/uninstall/confirm"},"hoverEvent":{"action":"show_text","contents":[{"text":"↪","color":"blue"}]}},{"text":" (Click)","bold":false,"color":"dark_gray"},"\n\n",{"text":" - - - ","color":"dark_aqua"}]

playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.944
