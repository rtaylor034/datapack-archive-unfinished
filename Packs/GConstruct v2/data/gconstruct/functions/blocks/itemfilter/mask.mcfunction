
#CALL - blocks/masks
#DESC - creates this blocks mask
#CONTEXT - This Entity

#summon minecraft:falling_block ~ ~-.001 ~ {BlockState:{Name:"minecraft:dropper",Properties:{facing:"down"}},Time:1,NoGravity:1,DropItem:0,Tags:["gcon-block-mask"]}
summon minecraft:falling_block ~ ~.001 ~ {BlockState:{Name:"minecraft:dispenser",Properties:{facing:"up"}},Time:1,NoGravity:1,DropItem:0,Tags:["gcon-block-mask"]}

summon minecraft:falling_block ~.001 ~.0005 ~ {BlockState:{Name:"minecraft:copper_block"},Time:1,NoGravity:1,DropItem:0,Tags:["gcon-block-mask"]}
summon minecraft:falling_block ~-.001 ~.0005 ~ {BlockState:{Name:"minecraft:copper_block"},Time:1,NoGravity:1,DropItem:0,Tags:["gcon-block-mask"]}
summon minecraft:falling_block ~ ~.0005 ~.001 {BlockState:{Name:"minecraft:copper_block"},Time:1,NoGravity:1,DropItem:0,Tags:["gcon-block-mask"]}
summon minecraft:falling_block ~ ~.0005 ~-.001 {BlockState:{Name:"minecraft:copper_block"},Time:1,NoGravity:1,DropItem:0,Tags:["gcon-block-mask"]}
