

#DECRIMENT
scoreboard players remove generate.i gcon_var 1

#ITEM
#default
data modify storage gconstruct:out generate.items prepend value {Count:1b,id:"minecraft:clock",tag:{gconstruct:{gui:1},display:{Name:'{"text":""}'}}}

#store data
execute store result score generate.offset gcon_var run data get storage gconstruct:controls modeldataoffset.gui
execute store result score generate.modeldata gcon_var run data get storage gconstruct:param generate.gui[0].id
#model data
scoreboard players operation generate.modeldata gcon_var += generate.offset gcon_var
execute store result storage gconstruct:out generate.items[0].tag.CustomModelData int 1 run scoreboard players get generate.modeldata gcon_var
#slot
data modify storage gconstruct:out generate.items[0].Slot set from storage gconstruct:param generate.gui[0].slot


#cycle
data modify storage gconstruct:param generate.gui append from storage gconstruct:param generate.gui[0]
data remove storage gconstruct:param generate.gui[0]

#LOOP
execute if score generate.i gcon_var matches 1.. run function gconstruct:method/block/gui/generate/foreachslot
