
#TAG REMOVE
tag @s[tag=302hs] remove 302bs

#HEALTH STORE
execute store result score snipehealth local run data get entity @s Health
execute as @s[tag=!302hs] at @s run scoreboard players remove snipehealth local 12
execute as @s[tag=302hs] at @s run scoreboard players remove snipehealth local 24

#DAMAGE
effect give @s[tag=!302hs] instant_damage 1 1 true
effect give @s[tag=302hs] instant_damage 1 2 true

#KILL
execute if score snipehealth local matches ..0 run scoreboard players add @a[scores={shoot=1..}] enemykills 1

#VFX
execute as @s[tag=302hs] as @a[scores={shoot=1..}] at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 0.8 0.7
execute as @a[scores={shoot=1..}] at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 0.5 0

execute as @s[tag=302hs] at @s run particle crit ~ ~1.6 ~ 0.2 0.2 0.2 0.8 30 force
execute as @s[tag=!302hs] at @s run particle crit ~ ~1 ~ 0.2 0.3 0.2 0.5 20 force


#SCORE RESET
scoreboard players set snipehealth local 100

#TAG RESET
tag @s remove 302hs
tag @s remove 302bs
