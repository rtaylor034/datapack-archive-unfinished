
#CALL - blocks/gui
#DESC - Called when an item is detected in a gui slot
#CONTEXT - This Entity

#for each item
execute store result score gui.safety.i gcon_var if data storage gconstruct:var gui.block.items[]
execute if score gui.safety.i gcon_var matches 1.. run function gconstruct:blocks/gui/foreachitem

#create item
execute if score gui.safety.i gcon_var matches -1 as @a[limit=1,sort=nearest,gamemode=!spectator] at @s run function gconstruct:blocks/gui/giveitem

#RESETS
scoreboard players reset gui.safety.i gcon_var
