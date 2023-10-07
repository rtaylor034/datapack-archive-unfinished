
#Child function of findlinked


#CHECK
execute store success score @s gcon_tpfound run data modify storage gconstruct:temp/tpitem Item set from block ~ ~ ~ Items[{Slot:1b}]

#FOUND
execute unless entity @e[type=area_effect_cloud,tag=gctpfound] if data block ~ ~ ~ Items[{Slot:1b}] run tag @s[scores={gcon_tpfound=0}] add gctpfound
scoreboard players set @s gcon_tpfound 1

execute as @e[type=area_effect_cloud,tag=gctpsearch] at @s run data modify storage gconstruct:temp/tpitem Item set from block ~ ~ ~ Items[{Slot:1b}]
