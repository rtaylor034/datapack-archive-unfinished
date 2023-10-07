#CALL: player/xpchange

scoreboard players operation @s xphealth_genscore -= lapis_thresh xphealth_global

#spawn item
summon item ~ ~1.5 ~ {Item:{id:"lapis_lazuli",Count:1}, Motion:[0.0, 0.4, 0.0]}

#VFX
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 0.9
particle item minecraft:lapis_lazuli ~ ~1.5 ~ 0.1 0.1 0.1 0.1 20 normal
