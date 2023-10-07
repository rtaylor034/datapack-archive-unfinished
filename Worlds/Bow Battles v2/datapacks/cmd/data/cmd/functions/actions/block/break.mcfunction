
#\call this function from a block position to break it, checks if its breakable or not.\

execute if block ~ ~ ~ #cmd:breakable align xyz positioned ~.5 ~.5 ~.5 run particle block stone ~ ~ ~ 0.3 0.3 0.3 1 40
execute if block ~ ~ ~ #cmd:breakable run playsound block.stone.break block @a ~ ~ ~ 0.8 0.8

execute if block ~ ~ ~ #cmd:breakable run setblock ~ ~ ~ air
execute unless block ~ ~ ~ #cmd:breakable unless block ~ ~ ~ #cmd:space run particle crit ~ ~ ~ 0 0 0 0.5 10 force
execute if block ~ ~ ~ stone_bricks run setblock ~ ~ ~ cracked_stone_bricks
