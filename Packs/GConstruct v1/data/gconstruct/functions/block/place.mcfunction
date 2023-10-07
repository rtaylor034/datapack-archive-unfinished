
#[DEPRICATED]

#STORE
summon area_effect_cloud ~ ~ ~ {Tags:["gcbplace"],Duration:10}
tp @e[type=area_effect_cloud,tag=gcbplace,limit=1,sort=nearest] @s
execute store result score @e[type=area_effect_cloud,tag=gcbplace,limit=1,sort=nearest] gcon_blockid run data get entity @s SelectedItem.tag.gcblockid
execute anchored eyes run tp @e[type=area_effect_cloud,tag=gcbplace,limit=1,sort=nearest] ^ ^ ^.1

execute as @e[type=area_effect_cloud,tag=gcbplace,limit=1,sort=nearest] at @s run function gconstruct:block/ray

#SCORES
scoreboard players set @s gcon_click 0
