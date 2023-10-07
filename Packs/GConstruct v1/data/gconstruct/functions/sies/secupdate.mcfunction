
#STORE
execute as @s[tag=gcsiesis,scores={gcon_count=..0}] at @s if entity @a[distance=0..7] if data block ~ ~ ~ Items[{Slot:5b}] run function gconstruct:sies/displaycount
