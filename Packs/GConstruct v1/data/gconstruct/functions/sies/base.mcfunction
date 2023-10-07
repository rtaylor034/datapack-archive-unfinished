#called from gui

#EFFECT
execute as @s[tag=!gcsiesbroken] at @s positioned ~ ~-.5 ~ unless entity @e[type=falling_block,tag=gcbmask,distance=0..0.1] run function gconstruct:sies/mask
execute if predicate gconstruct:halfchance run particle portal ~ ~.5 ~ 0.1 0 0.1 0.6 1

#GUI
execute as @s[tag=!gcsiesbroken] at @s if entity @a[distance=0..8] run function gconstruct:sies/gui
execute as @s[tag=!gcsiesbroken,tag=gcsiesid] at @s unless entity @a[distance=0..8] run function gconstruct:sies/deleteditem

#HOPPER FIX
execute if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ air destroy
