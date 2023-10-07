#called when a nexus is hit with nexus bow

#Team scores
execute as @s[tag=rednexus] run scoreboard players add #BLUE points 1
execute as @s[tag=bluenexus] run scoreboard players add #RED points 1

#VFX
execute as @s[tag=rednexus] at @s run particle minecraft:item minecraft:red_wool ~ ~ ~ 0.5 0.5 0.5 1 300 force
execute as @s[tag=bluenexus] at @s run particle minecraft:item minecraft:blue_wool ~ ~ ~ 0.5 0.5 0.5 1 300 force
playsound block.glass.break master @a ~ ~ ~ 3 0 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0 0.5
particle minecraft:explosion_emitter ~ ~ ~ 0.5 0.5 0.5 1 5 force
playsound item.trident.thunder master @a ~ ~ ~ 3 1.1 0.5

#END GAME
execute if score #RED points matches 5.. run function cmd:game/standard/end
execute if score #BLUE points matches 5.. run function cmd:game/standard/end
