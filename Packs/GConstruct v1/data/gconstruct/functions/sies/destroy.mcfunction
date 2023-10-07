
#BREAK
#\Make sure to change this when changing the name\
summon item ~ ~ ~ {PickupDelay:10,Motion:[0.0,0.2,0.0],Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"SIES Device","bold":false,"italic":false}',Lore:['{"text":"GConstruct","color":"#363666","bold":false,"italic":false}']},CustomModelData:4002,gcblock:1,gcblockid:2,EntityTag:{id:"minecraft:area_effect_cloud",Particle:"nautilus",Radius:0f,Duration:1,Tags:["gcblockp","gcblock2"]}}}}

execute positioned ~ ~.5 ~ run kill @e[type=item,tag=gcsiesitem,distance=0..1,sort=nearest,limit=1]

kill @s
