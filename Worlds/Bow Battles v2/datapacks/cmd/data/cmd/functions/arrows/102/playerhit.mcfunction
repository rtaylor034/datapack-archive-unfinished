
#\called from player hit\


particle smoke ~ ~1 ~ 0.5 0.8 0.5 0.05 20 force 
fill ~.6 ~2.5 ~.6 ~-.6 ~-.5 ~-.6 air replace #cmd:breakable
fill ~.6 ~2.5 ~.6 ~-.6 ~-.5 ~-.6 cracked_stone_bricks replace stone_bricks
playsound block.stone.break block @a ~ ~ ~ 1 0.8

tag @s remove arrowhit




