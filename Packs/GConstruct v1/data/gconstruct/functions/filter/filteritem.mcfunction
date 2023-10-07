
#called from item that matches filter and is filtered (from filters position)

tp @s ~ ~-0.8 ~
playsound minecraft:block.dispenser.dispense block @a ~ ~ ~ 0.3 1.2
data merge entity @s {Motion:[0.0,-0.1,0.0]}
