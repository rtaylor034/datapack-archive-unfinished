
#\child entity that tracks player\

summon item ~ ~ ~ {Invulnerable:1,PickupDelay:1000s,Tags:["init","child","301c"],Item:{id:"minecraft:tnt",Count:1b}}

#INIT
scoreboard players operation @e[type=item,tag=init,limit=1,sort=nearest] ownerid = @s ownerid
execute as @s[tag=red] run tag @e[type=item,tag=init,limit=1,sort=nearest] add red
execute as @s[tag=blue] run tag @e[type=item,tag=init,limit=1,sort=nearest] add blue
execute as @s[tag=ffa] run tag @e[type=item,tag=init,limit=1,sort=nearest] add ffa

#MOTION
data modify entity @e[type=item,tag=init,limit=1,sort=nearest] Motion set from entity @s Motion


#FUSE
scoreboard players set @e[type=item,tag=init,limit=1,sort=nearest] gtimer2 50

#TAG
tag @e[type=item,tag=init,limit=1,sort=nearest] remove init

#VFX
playsound entity.creeper.primed player @a ~ ~ ~ 0.8 1


#KILL
kill @s
