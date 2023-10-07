
#CALL - blocks/main
#DESC - Called if a player is within 6 blocks, displays the gui items
#CONTEXT - This Entity

#ref data
data modify storage gconstruct:var gui.block.items set from storage gconstruct:var block.items
data modify storage gconstruct:var gui.items set from entity @s data.gui

#safety
#data modify storage gconstruct:var gui.safety set from storage gconstruct:var block.items

#execute store success score gui.safety gcon_var run data modify storage gconstruct:var gui.safety merge from storage gconstruct:var gui.items
#execute if score gui.safety gcon_var matches 1.. run function gconstruct:blocks/gui/safety

function gconstruct:blocks/gui/safety

#display
data modify block ~ ~ ~ Items append from entity @s data.gui[]

#RESETS
data remove storage gconstruct:var gui
scoreboard players reset gui.safety gcon_var
