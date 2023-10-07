
#PARAMS - A [generate.gui -> gconstruct:param ; Array<Obj{slot:<byte>,id:<int>}>] | GUI array
#OUT - [generate.items -> gconstruct:out ; Array<Item Obj>] | Item array

#USE - Converts the GUI id's and slots specified in [A] to usable item data {OUT}.

#id KEY
#1 - blank GUI



#OUT RESET
data modify storage gconstruct:out generate.items set value []


#for each slot
execute store result score generate.i gcon_var if data storage gconstruct:param generate.gui[]
execute if score generate.i gcon_var matches 1.. run function gconstruct:method/block/gui/generate/foreachslot








#RESETS
data remove storage gonstruct:param generate
scoreboard players reset generate.i gcon_var
scoreboard players reset generate.modeldata gcon_var
scoreboard players reset generate.offset gcon_var
