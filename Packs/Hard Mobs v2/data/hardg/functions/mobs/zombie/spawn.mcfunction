
#SPAWN ATTRIBUTE SET
data modify storage hardg:param spawn.attributes set value [{name:"minecraft:generic.movement_speed", min:210, range:110, div10:3}, {name:"minecraft:generic.knockback_resistance", min:30, range:20, div10:2}, {name:"minecraft:zombie.spawn_reinforcements", min:3, range:0, div10:1}, {name:"minecraft:generic.follow_range", min:50, range:20, div10:0}, {name:"minecraft:generic.attack_damage", min:2, range:4, div10:0}]
data modify storage hardg:param spawn.health set value {min:30, range:40}

#custom
data merge entity @s {CanPickUpLoot:1b}
