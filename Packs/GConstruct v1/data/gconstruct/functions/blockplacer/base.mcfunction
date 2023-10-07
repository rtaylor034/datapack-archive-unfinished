#called every tick if player is within 15 blocks

#EFFECT
#execute positioned ~ ~-.5 ~ unless entity @e[type=falling_block,tag=gcbmask,distance=0..0.1] run function gconstruct:blockplacer/mask
