
#STORE
execute store result score #gc_siesc local run data get block ~ ~ ~ Items[{Slot:3b}].Count
scoreboard players operation @s gcon_count += #gc_siesc local
data remove block ~ ~ ~ Items[{Slot:3b}]

#was annoying
##playsound entity.enderman.teleport block @a ~ ~ ~ 0.5 2

#UPDATE DISPLAY
function gconstruct:sies/displaycount
