
#SPAWN ATTRIBUTE SET
data modify storage hardg:param spawn.attributes set value [{name:"minecraft:generic.movement_speed", min:250, range:30, div10:3}, {name:"minecraft:generic.max_health", min:14, range:11, div10:0}, {name:"minecraft:generic.follow_range", min:24, range:10, div10:0}]
data modify storage hardg:param spawn.health set value {min:10, range:6}

#custom
data merge entity @s {CanPickUpLoot:1b}
