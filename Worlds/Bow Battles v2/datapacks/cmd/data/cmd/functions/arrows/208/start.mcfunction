
#DATA
data merge entity @s {damage:0.5d,crit:0b}

#DAMAGE VALUES
execute as @s[scores={208combo=0}] run data merge entity @s {damage:0.6d}
execute as @s[scores={208combo=1}] run data merge entity @s {damage:1.4d}
execute as @s[scores={208combo=2}] run data merge entity @s {damage:2.1d}
execute as @s[scores={208combo=3}] run data merge entity @s {damage:2.9d}
execute as @s[scores={208combo=4}] run data merge entity @s {damage:3.6d}
execute as @s[scores={208combo=5..}] run data merge entity @s {damage:4.4d}


#TRACKER
function cmd:register/createtracker
