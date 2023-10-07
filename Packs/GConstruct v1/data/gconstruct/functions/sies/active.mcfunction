

#CHECK
execute if data block ~ ~ ~ Items[{Slot:3b}] run function gconstruct:sies/checkitem

#OUTPUT
execute store result score @s gcon_siesout run data get block ~ ~ ~ Items[{Slot:5b}].Count
scoreboard players operation @s gcon_siesout -= 64 integer
execute as @s[scores={gcon_siesout=..-1}] at @s run scoreboard players operation @s gcon_siesout *= -1 integer
execute as @s[scores={gcon_siesout=1..}] at @s if score @s gcon_siesout > @s gcon_count run scoreboard players operation @s gcon_siesout = @s gcon_count
execute as @s[scores={gcon_siesout=1..}] at @s run function gconstruct:sies/output

#ITEM RESET
execute as @s[scores={gcon_count=..0}] at @s unless data block ~ ~ ~ Items[{Slot:5b}] run function gconstruct:sies/resetitem
