

#GTIMER
scoreboard players add @s gtimer 1

#TP
tp @s ^ ^ ^.3


#HIT REG
execute as @s[tag=blue] at @s as @a[team=red,dx=0,scores={playerstate=1}] positioned ~-.99 ~-2.5 ~-.99 if entity @s[dx=0] run tag @s add 302hs
execute as @s[tag=blue] at @s as @a[team=red,dx=0,scores={playerstate=1}] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run tag @s add 302bs
execute as @s[tag=red] at @s as @a[team=blue,dx=0,scores={playerstate=1}] positioned ~-.99 ~-2.5 ~-.99 if entity @s[dx=0] run tag @s add 302hs
execute as @s[tag=red] at @s as @a[team=blue,dx=0,scores={playerstate=1}] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run tag @s add 302bs
execute as @s[tag=ffa] at @s as @a[team=ffa,dx=0,scores={playerstate=1}] positioned ~-.99 ~-2.5 ~-.99 if entity @s[dx=0] run tag @s add 302hs
execute as @s[tag=ffa] at @s as @a[team=ffa,dx=0,scores={playerstate=1}] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run tag @s add 302bs
#VFX
particle crit ~ ~.1 ~ 0 0 0 0 1 force
particle mycelium ~ ~.1 ~ 0 0 0 0 1 force
playsound entity.bee.hurt block @a[scores={shoot=0}] ~ ~ ~ 0.02 1.3

#DIE
execute as @s[scores={gtimer=500..}] at @s run tag @s add die
execute unless block ~ ~ ~ #cmd:space run tag @s add die
execute as @s[tag=die] at @s run playsound entity.arrow.hit block @a ~ ~ ~ 0.8 1.2
execute as @s[tag=die] at @s run particle item arrow ^ ^ ^-.3 0 0 0 0.1 50

#LOOP
execute as @s[tag=!die] at @s run function cmd:arrows/302/travel
