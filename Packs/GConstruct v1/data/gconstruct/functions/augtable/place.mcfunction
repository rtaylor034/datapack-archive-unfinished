
#SPAWN
summon area_effect_cloud ~ ~ ~ {Tags:["gcaugt","gcblock"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Augmenting Station"}'} destroy

#EFFECTS
playsound block.stone.place block @a ~ ~ ~ 0.7 0.8

execute positioned ~ ~-.5 ~ run function gconstruct:augtable/effect
