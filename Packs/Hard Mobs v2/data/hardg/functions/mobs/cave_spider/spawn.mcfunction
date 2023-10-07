
#EXTRA SPIDER
execute as @s[tag=!hardg-spider-ex] run summon minecraft:cave_spider ~.1 ~.1 ~.1 {Tags:["hardg-spider-ex"]}

#SPAWN ATTRIBUTE SET
data modify storage hardg:param spawn.attributes set value [{name:"minecraft:generic.movement_speed", min:410, range:50, div10:3}, {name:"minecraft:generic.knockback_resistance", min:10, range:20, div10:2}, {name:"minecraft:generic.follow_range", min:10, range:0, div10:0}, {name:"minecraft:generic.attack_damage", min:3, range:1, div10:0}]
data modify storage hardg:param spawn.health set value {min:4, range:2}
