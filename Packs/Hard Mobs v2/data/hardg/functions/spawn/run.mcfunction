
#PARAMS - @s, A [spawn.attributes -> hardg:param ; Attribute Obj], B [spawn.health -> hardg:param ; Health Obj] | Attribute object
#OUT - AFFECTS this.Attributes
#CONTEXT - this

#USE - Applies and randomizes attributes specified in [A].

#Attribute Obj = {name:<attribute name = string>, min:<minimum value = int>, range:<maximum random value bonus = int>, div10:<how many times to divide by 10 = int>}
#Health Obj = {min:<minimum value = int>, range:<maximum random value bonus = int>}

#iterate attribute (uses removal)
execute if data storage hardg:param spawn.attributes[] run function hardg:spawn/iattribute

#HEALTH
#nbt
data modify entity @s Attributes append value {Name:"minecraft:generic.max_health",Base:1000}
data modify entity @s Health set value 1000
#score
execute store result score @s hardg_maxhealth run data get storage hardg:param spawn.health.min 10
execute store result storage slime:param random.max int 1 run data get storage hardg:param spawn.health.range 10
function slime:math/random/run
scoreboard players operation @s hardg_maxhealth += random.number slime_out
scoreboard players operation @s hardg_health = @s hardg_maxhealth

#TAG
tag @s add hardg-spawned

#RESETS
data remove storage hardg:param spawn
data remove storage hardg:var spawn
scoreboard players reset spawn.div10 hardg_var
scoreboard players reset spawn.val hardg_var
