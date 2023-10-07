
#CALL - uninstall

data modify storage slime:param seperateby.array set from storage slime:global activeDependents
data modify storage slime:param seperateby.seperator set value ", "
function slime:array/seperateby/run
data modify storage slime:var promptwarn.dependents set from storage slime:out seperateby.out

tellraw @s ["","\n",{"text":"- - -","color":"dark_aqua"},"\n","\n",{"text":"The following datapacks require ","color":"gold"},{"text":"SlimeCore","color":"light_purple"},{"text":" in order to function properly: ","color":"gold"},{"nbt":"promptwarn.dependents","storage":"slime:var","interpret":true,"color":"yellow"},"\n\n",{"text":"Uninstalling SlimeCore before uninstalling and removing these datapacks may cause serious issues.","color":"gray","italic":true},"\n","\n",{"text":"Uninstall Anyway","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function slime:sub/uninstall/confirm"},"hoverEvent":{"action":"show_text","contents":[{"text":"↪","color":"red"}]}},{"text":" (Click)","color":"dark_gray"},"\n","\n",{"text":"- - -","color":"dark_aqua"}]

#tellraw @s ["","\n",{"text":" - - - ","color":"dark_aqua"},"\n\n",{"text":"Please confirm the uninstallation of SlimeCore library.","color":"gold"},{"text":"\nThis will remove all related scoreboards, entities, and (most) storage data.","color":"gray","italic":true}, "\n\n",{"text":"Confirm Uninstall","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function slime:sub/uninstall/confirm"},"hoverEvent":{"action":"show_text","contents":[{"text":"↪","color":"blue"}]}},{"text":" (Click)","bold":false,"color":"dark_gray"},"\n\n",{"text":" - - - ","color":"dark_aqua"}]

#RESETS
data remove storage slime:var promptwarn
