
#PARAMS - A (getitem.id -> gcon_param) | block id
#OUT - [getitem.item -> gconstruct:out ; Item Obj] | item object

#USE - gets the placeable item form (spawn egg) of the block specified by [A] and returns it {OUT}.

#NOTE - This is mainly for control and ease of modification.
#NOTE - CustomModelData is [modeldataoffset.blocks -> gconstruct:controls] + [A] on slime_spawn_egg
#NOTE - Actual placement and behaviour is purely based on id and other functions.

#KEY
#1 - Item Filter

#OUT DEFAULT
data modify storage gconstruct:out getitem.item set value {id:"minecraft:slime_spawn_egg",tag:{gconstruct:{block:1},display:{Name:'{"text":"MISSING ITEM"}'}}}
execute store result storage gconstruct:out getitem.item.tag.gconstruct.block int 1 run scoreboard players get getitem.id gcon_param


#ITEM DISPLAY
#Item Filter
execute if score getitem.id gcon_param matches 1 run data modify storage gconstruct:out getitem.item.tag merge value {display:{Name:'{"text":"Item Filter","italic":false}'}}


#ENTITY
data modify storage gconstruct:out getitem.item.tag.EntityTag set value {id:"minecraft:marker",Tags:["gcon-block","gcon-block-init"],CustomName:'{"text":"(GConstruct) Item Filter Block","color":"#444488"}'}

#DATA
#marker data
execute store result storage gconstruct:out getitem.item.tag.EntityTag.data.blockid int 1 run scoreboard players get getitem.id gcon_param

#model data
#(1000 offset of block id)
execute store result score getitem.modeldata gcon_var run data get storage gconstruct:controls modeldataoffset.blocks
scoreboard players operation getitem.modeldata gcon_var += getitem.id gcon_param
execute store result storage gconstruct:out getitem.item.tag.CustomModelData int 1 run scoreboard players get getitem.modeldata gcon_var

#signature
data modify storage gconstruct:out getitem.item.tag.display.Lore append from storage gconstruct:controls signature.text




#RESETS
scoreboard players reset getitem.id gcon_param
scoreboard players reset getitem.modeldata gcon_var
