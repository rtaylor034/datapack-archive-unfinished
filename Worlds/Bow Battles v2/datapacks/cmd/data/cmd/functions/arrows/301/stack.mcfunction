
#VFX
playsound entity.creeper.primed block @a ~ ~ ~ 1 2
playsound block.note_block.hat block @a ~ ~ ~ 1 0.8
particle lava ~ ~.3 ~ 0.1 0.1 0.1 1 15 force
particle crit ~ ~.3 ~ 0.1 0.1 0.1 1 15 force

scoreboard players set @s gtimer2 13
data modify entity @s Item.Count set value 1b







