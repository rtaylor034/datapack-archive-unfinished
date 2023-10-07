
#for items that have empty space, make sure to check for the total item count
execute store result score #itemcount gcon_local if data block ~ ~ ~ Items[]

#AUGTABLE
execute store success score @s gcon_craft if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:iron_block"},{Slot:1b,id:"minecraft:diamond_block"},{Slot:2b,id:"minecraft:iron_block"},{Slot:3b,id:"minecraft:iron_block"},{Slot:4b,id:"minecraft:anvil"},{Slot:5b,id:"minecraft:iron_block"},{Slot:6b,id:"minecraft:glowstone"},{Slot:7b,id:"minecraft:glowstone"},{Slot:8b,id:"minecraft:glowstone"}]} run function gconstruct:constructor/recipes/augtable

#SIES
execute store success score @s gcon_craft if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:obsidian"},{Slot:1b,id:"minecraft:ender_pearl"},{Slot:2b,id:"minecraft:obsidian"},{Slot:3b,id:"minecraft:ender_pearl"},{Slot:4b,id:"minecraft:ender_chest"},{Slot:5b,id:"minecraft:ender_pearl"},{Slot:6b,id:"minecraft:crying_obsidian"},{Slot:7b,id:"minecraft:crying_obsidian"},{Slot:8b,id:"minecraft:crying_obsidian"}]} run function gconstruct:constructor/recipes/sies

#TELEPORTER
execute store success score @s gcon_craft if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:tinted_glass"},{Slot:1b,id:"minecraft:tinted_glass"},{Slot:2b,id:"minecraft:tinted_glass"},{Slot:3b,id:"minecraft:ender_eye"},{Slot:4b,tag:{gcitemid:2}},{Slot:5b,id:"minecraft:ender_eye"},{Slot:6b,id:"minecraft:obsidian"},{Slot:7b,id:"minecraft:obsidian"},{Slot:8b,id:"minecraft:obsidian"}]} run function gconstruct:constructor/recipes/teleporter

#FILTER
execute store success score @s gcon_craft if block ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"text":"Constructor"}',Items:[{Slot:1b,id:"minecraft:copper_ingot"},{Slot:3b,id:"minecraft:copper_ingot"},{Slot:4b,id:"minecraft:hopper"},{Slot:5b,id:"minecraft:copper_ingot"},{Slot:7b,id:"minecraft:copper_ingot"}]} if score #itemcount gcon_local matches 5 run function gconstruct:constructor/recipes/filter

#BLOCK PLACER
execute store success score @s gcon_craft if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:cobblestone"},{Slot:1b,id:"minecraft:cobblestone"},{Slot:2b,id:"minecraft:cobblestone"},{Slot:3b,id:"minecraft:cobblestone"},{Slot:4b,id:"minecraft:piston"},{Slot:5b,id:"minecraft:cobblestone"},{Slot:6b,id:"minecraft:cobblestone"},{Slot:7b,id:"minecraft:redstone"},{Slot:8b,id:"minecraft:cobblestone"}]} run function gconstruct:constructor/recipes/blockplacer

#FOCUS CRYSTAL
execute store success score @s gcon_craft if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:amethyst_shard"},{Slot:1b,id:"minecraft:diamond"},{Slot:2b,id:"minecraft:amethyst_shard"},{Slot:3b,id:"minecraft:diamond"},{Slot:4b,id:"minecraft:emerald",tag:{gcitemid:1}},{Slot:5b,id:"minecraft:diamond"},{Slot:6b,id:"minecraft:amethyst_shard"},{Slot:7b,id:"minecraft:diamond"},{Slot:8b,id:"minecraft:amethyst_shard"}]} run function gconstruct:constructor/recipes/focuscrystal


execute as @s[scores={gcon_craft=1..}] at @s run function gconstruct:constructor/recipes/crafted
