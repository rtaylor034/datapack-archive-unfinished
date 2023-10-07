
#\called every tick from all alive players (playerstate=1)\
#BOW SPECIFIC COMMANDS

#SNIPER BOW
execute as @s[tag=302sneak] at @s unless score @s holdingbow matches 302 run function cmd:arrows/302/sneakend

#COMBO BOW
execute as @s[scores={208combo=1..}] at @s unless score @s holdingbow matches 208 run function cmd:arrows/208/resetcombo

#IMPACT BOW
execute as @s[tag=304launch] at @s run function cmd:arrows/304/endlaunch
execute as @s[tag=304slam,nbt={OnGround:1b}] at @s run function cmd:arrows/304/playerslam

#FROST
execute as @s[scores={305frost=1..}] at @s run function cmd:arrows/305/frosteffect
