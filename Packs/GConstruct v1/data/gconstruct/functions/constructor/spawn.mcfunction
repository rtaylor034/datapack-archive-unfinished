
#SPAWN
summon area_effect_cloud ~ ~ ~ {Tags:["gcblock","gconst"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Constructor"}'}

#EFFECTS
particle poof ~ ~ ~ 0.4 0.4 0.4 0.01 7
playsound block.piston.extend block @a ~ ~ ~ 1 2
kill @s
