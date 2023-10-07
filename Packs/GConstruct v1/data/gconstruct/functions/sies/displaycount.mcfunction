
#TAG
tag @s add gcsiesdisplay
execute positioned ~ ~.5 ~ run tag @e[type=item,limit=1,sort=nearest,tag=gcsiesitem] add gcsiesdisplayi

execute store result score @s gcon_siesadd run data get block ~ ~ ~ Items[{Slot:5b}].Count
scoreboard players operation @s gcon_siesadd += @s gcon_count
execute as @e[type=area_effect_cloud,tag=gcsignmark] at @s run data merge block ~ ~ ~ {messages[0]:'{"score":{"name":"@e[type=area_effect_cloud,tag=gcsiesdisplay,limit=1]","objective":"gcon_siesadd"},"color":"#C5C5C5"}',Text2:'["",{"score":{"name":"@e[type=area_effect_cloud,tag=gcsiesdisplay,limit=1]","objective":"gcon_siesadd"},"color":"#DCDCDC"},{"text":" Items","color":"#DCDCDC"}]'}
execute as @e[type=area_effect_cloud,tag=gcsignmark] at @s run data modify entity @e[type=item,tag=gcsiesdisplayi,limit=1] CustomName set from block ~ ~ ~ messages[0]
execute as @e[type=area_effect_cloud,tag=gcsignmark] at @s run data modify entity @e[type=item,tag=gcsiesdisplay,limit=1] CustomName set from block ~ ~ ~ Text2


tag @e[type=area_effect_cloud,tag=gcsiesdisplay] remove gcsiesdisplay
tag @e[type=item,tag=gcsiesdisplayi] remove gcsiesdisplayi


