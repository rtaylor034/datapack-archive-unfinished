
#INNACURATE SPREAD
scoreboard players set @s gtimer2 1000
execute as @s[tag=hipfire] at @s run function cmd:arrows/302/hipfirespread




#VFX
playsound minecraft:entity.snowball.throw block @a ~ ~ ~ 1 1.5
playsound minecraft:block.wooden_button.click_off block @a ~ ~ ~ 1 0.7
particle enchanted_hit ~ ~ ~ 0 0 0 0.5 10

#MAIN
execute as @s at @s run function cmd:arrows/302/travel
execute as @a[tag=302bs] at @s run function cmd:arrows/302/damage


#DIE
kill @s
