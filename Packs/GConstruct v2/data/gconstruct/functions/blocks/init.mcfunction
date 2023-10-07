
#CALL - blocks/main
#DESC - called when any block is spawned, initializing it (tag "gcon-block-init")
#CONTEXT - This Entity

#set block id score
execute store result score @s gcon_blockid run data get entity @s data.blockid

#position fix
execute align xyz run tp @s ~.5 ~ ~.5


#place tag
tag @s add gcon-block-place






#RESETS
tag @s remove gcon-block-init
