

#NAME
data modify storage hardg:var spawn.a.Name set from storage hardg:param spawn.attributes[0].name

#VALUE
#random range
data modify storage slime:param random.max set from storage hardg:param spawn.attributes[0].range
function slime:math/random/run
#add min
execute store result score spawn.val hardg_var run data get storage hardg:param spawn.attributes[0].min
scoreboard players operation spawn.val hardg_var += random.number slime_out
#store to base
execute store result storage hardg:var spawn.a.Base int 1 run scoreboard players get spawn.val hardg_var
#div10
execute store result score spawn.div10 hardg_var run data get storage hardg:param spawn.attributes[0].div10
execute if score spawn.div10 hardg_var matches 1.. run function hardg:spawn/div10

#tellraw @a {"nbt":"spawn.a","storage":"hardg:var"}

#ADD TO ATTRIBUTES
data modify entity @s Attributes append from storage hardg:var spawn.a
data remove storage hardg:var spawn.a

#LOOP
data remove storage hardg:param spawn.attributes[0]
execute if data storage hardg:param spawn.attributes[0] run function hardg:spawn/iattribute
