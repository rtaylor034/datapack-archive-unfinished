
#SPAWN
summon area_effect_cloud ~ ~ ~ {Tags:["gctelep","gcblock"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Teleporter"}'} destroy

#EFFECTS
playsound block.stone.place block @a ~ ~ ~ 0.7 0.8
