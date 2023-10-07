
#Called when sies is initially broken


#INITIAL KILLS
execute as @s[tag=!gcsiesbroken] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b,tag:{display:{Name:'{"text":"Single Item Ender Storage"}'}}}},limit=1,sort=nearest,distance=0..2]
execute as @s[tag=!gcsiesbroken] at @s positioned ~ ~-.5 ~ run kill @e[type=falling_block,tag=gcbmask,distance=0..0.1]

#DISPLAY FORCE SPAWNING
execute unless entity @e[type=item,tag=gcsiesitem,limit=1,sort=nearest,distance=0..0.8] run function gconstruct:sies/forcedisplayspawn

#ITEM SPAWNING
execute as @s[scores={gcon_count=1..}] at @s run summon item ~ ~ ~ {PickupDelay:10s,Motion:[0.0,0.25,0.0],Tags:["gcsiesbi"],Item:{id:"minecraft:slime_ball",Count:1,tag:{}}}
execute as @s[scores={gcon_count=1..}] at @s positioned ~ ~.5 ~ run data modify entity @e[type=item,tag=gcsiesbi,limit=1,sort=nearest] Item set from entity @e[type=item,tag=gcsiesitem,limit=1,sort=nearest,distance=0..1] Item
execute as @s[scores={gcon_count=1..}] at @s positioned ~ ~.5 ~ run data remove entity @e[type=item,tag=gcsiesbi,limit=1,sort=nearest] Item.tag.gcSiesDisplay
execute as @s[scores={gcon_count=64..}] at @s positioned ~ ~.5 ~ run data modify entity @e[type=item,tag=gcsiesbi,limit=1,sort=nearest] Item.Count set value 64
execute as @s[scores={gcon_count=1..63}] at @s positioned ~ ~.5 ~ store result entity @e[type=item,tag=gcsiesbi,limit=1,sort=nearest] Item.Count int 1 run scoreboard players get @s gcon_count
tag @e[type=item,tag=gcsiesbi] remove gcsiesbi

#EFFECTS
execute as @s[scores={gcon_count=1..}] run playsound entity.item.pickup block @a ~ ~ ~ 0.5 2
particle reverse_portal ~ ~ ~ 0.05 0.05 0.05 0.03 10
scoreboard players remove @s gcon_count 64


#DESTROY
execute as @s[scores={gcon_count=..0}] at @s run function gconstruct:sies/destroy

tag @s[tag=!gcsiesbroken] add gcsiesbroken
