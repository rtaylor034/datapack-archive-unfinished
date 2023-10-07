
#SPAWN
summon area_effect_cloud ~ ~ ~ {Tags:["gcfilt","gcblock"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
setblock ~ ~ ~ dropper[facing=down]{CustomName:'{"text":"Item Filter"}'} destroy

#EFFECTS
playsound block.stone.place block @a ~ ~ ~ 0.7 1.3
