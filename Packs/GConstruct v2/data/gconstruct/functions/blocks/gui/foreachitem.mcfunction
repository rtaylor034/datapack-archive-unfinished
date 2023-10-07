
#decriment
scoreboard players remove gui.safety.i gcon_var 1

#cycle
data modify storage gconstruct:var gui.block.items append from storage gconstruct:var gui.block.items[0]
data remove storage gconstruct:var gui.block.items[0]

#detect slot
data modify storage slime:param cycleto.array set from storage gconstruct:var gui.items
data modify storage slime:param cycleto.tag.Slot set from storage gconstruct:var gui.block.items[0].Slot
execute unless data storage gconstruct:var gui.block.items[0].tag.gconstruct.gui run function slime:array/cycleto/run

#stop loop if matching slot
execute if score cycleto.success slime_out matches 1.. unless data storage gconstruct:var gui.block.items[0].tag.gconstruct.gui run scoreboard players set gui.safety.i gcon_var -1



#loop
execute if score gui.safety.i gcon_var matches 1.. run function gconstruct:blocks/gui/foreachitem
