#Called from all clouds with tag "gcblock"

execute as @s[tag=gcsies] at @s run function gconstruct:sies/prebase
execute as @s[tag=gcaugt] at @s if entity @a[distance=0..15] run function gconstruct:augtable/base
execute as @s[tag=gconst] at @s if entity @a[distance=0..15] run function gconstruct:constructor/base
execute as @s[tag=gctelep] at @s run function gconstruct:teleporter/prebase
execute as @s[tag=gcfilt] at @s run function gconstruct:filter/prebase
execute as @s[tag=gcbplacer] at @s run function gconstruct:blockplacer/prebase
