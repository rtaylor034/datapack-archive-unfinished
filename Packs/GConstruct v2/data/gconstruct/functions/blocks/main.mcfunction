
#CALL - tick
#DESC - Called each tick from all markers with "gcon-block" tag
#CONTEXT - This Entity

#DATA
data modify storage gconstruct:var block.items set from block ~ ~ ~ Items


#INIT
execute as @s[tag=gcon-block-init] run function gconstruct:blocks/init

#MASK
#execute if entity @a[distance=..5] unless entity @e[type=falling_block,distance=..0.5,tag=gcon-block-mask] at @s run function gconstruct:blocks/masks

#GUI
execute if entity @a[distance=..6] if data entity @s data.gui run function gconstruct:blocks/gui

#HOPPER
execute if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ air destroy
#/may cause hopper minecarts to be disabled forever
execute positioned ~ ~-1 ~ as @e[type=minecraft:hopper_minecart,distance=0..1] run data modify entity @s Enabled set value 0b

#BLOCKS

#1 - itemfilter
execute if score @s gcon_blockid matches 1 at @s run function gconstruct:blocks/itemfilter/base


#BREAK
execute if block ~ ~ ~ #slime:airs run function gconstruct:blocks/break

#reset
data remove storage gconstruct:var block
