
#SPAWN ATTRIBUTE SET
data modify storage hardg:param spawn.attributes set value [{name:"minecraft:generic.movement_speed", min:250, range:30, div10:3}, {name:"minecraft:generic.follow_range", min:25, range:0, div10:0}]
data modify storage hardg:param spawn.health set value {min:5, range:0}
data merge entity @s {Fuse:15,Silent:1}
