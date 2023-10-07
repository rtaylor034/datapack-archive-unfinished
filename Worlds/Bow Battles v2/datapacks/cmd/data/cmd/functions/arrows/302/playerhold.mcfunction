

#START

execute as @s[tag=!302sneak,scores={sneak=1..}] at @s run function cmd:arrows/302/sneakstart

execute as @s[tag=302sneak] at @s run effect give @s slowness 2 100 true



#END
execute as @s[tag=302sneak,scores={sneak=0}] at @s run function cmd:arrows/302/sneakend

