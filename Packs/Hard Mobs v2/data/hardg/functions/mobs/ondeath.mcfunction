
#on death
kill @s
execute if score mobs.general.poofDeath hardg_control matches 1 unless data entity @s Passengers run tp @s 0 -1000 0
execute if score mobs.general.poofDeath hardg_control matches 1 run playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.12 1
