
#BREAK
#\Make sure to change this when changing the name\
kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b,tag:{display:{Name:'{"text":"Item Filter"}'}}}},limit=1,sort=nearest,distance=0..2]
summon item ~ ~ ~ {PickupDelay:10,Motion:[0.0,0.2,0.0],Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Item Filter","bold":false,"italic":false}',Lore:['{"text":"GConstruct","color":"#363666","bold":false,"italic":false}']},CustomModelData:4004,gcblock:1,gcblockid:4,EntityTag:{id:"minecraft:area_effect_cloud",Particle:"nautilus",Radius:0f,Duration:1,Tags:["gcblockp","gcblock4"]}}}}
execute positioned ~ ~-.5 ~ run kill @e[type=falling_block,tag=gcbmask,distance=0..0.1]

kill @s
