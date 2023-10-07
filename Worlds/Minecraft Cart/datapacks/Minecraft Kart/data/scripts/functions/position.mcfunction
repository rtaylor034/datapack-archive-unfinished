


#LAP ADDER
execute as @a[tag=!ofn] at @s if block ~ ~-1.5 ~ jukebox run tag @s add ofn
execute as @a[tag=ofn] at @s unless block ~ ~-1.5 ~ jukebox run tag @s remove ofn
execute as @e[tag=ofn] at @s if score @s cp = @e[tag=lapm,sort=nearest,limit=1] cp run scoreboard players add @s lap 1
execute as @e[tag=ofn] at @s if score @s cp = @e[tag=lapm,sort=nearest,limit=1] cp run scoreboard players set @s cp 1






#CHECKPOINT SCORE SET
execute as @a[tag=!ocp] at @s if block ~ ~-1.5 ~ note_block run tag @s add ocp
execute as @a[tag=ocp] at @s unless block ~ ~-1.5 ~ note_block run tag @s remove ocp
execute as @a[tag=ocp] at @s if score @s lap = @e[tag=cp,sort=nearest,limit=1] cplap if score @s cp = @e[tag=cp,sort=nearest,limit=1] cp run tag @s add posc
execute as @a[tag=ocp] at @s if score @s lap > @e[tag=cp,sort=nearest,limit=1] cplap run scoreboard players set @e[tag=cp,sort=nearest,limit=1] cplace 1
execute as @a[tag=ocp] at @s if score @s lap > @e[tag=cp,sort=nearest,limit=1] cplap run scoreboard players add @e[tag=cp,sort=nearest,limit=1] cplap 1
execute as @a[tag=posc] at @s run execute as @e[tag=!posc,scores={place=1..100}] at @s if score @s place < @e[tag=posc,limit=1] place run scoreboard players add @s place 1
execute as @a[tag=ocp] at @s if score @s lap = @e[tag=cp,sort=nearest,limit=1] cplap if score @s cp = @e[tag=cp,sort=nearest,limit=1] cp store result score @s place run scoreboard players get @e[tag=cp,sort=nearest,limit=1] cplace
execute as @a[tag=ocp] at @s if score @s lap = @e[tag=cp,sort=nearest,limit=1] cplap if score @s cp = @e[tag=cp,sort=nearest,limit=1] cp run scoreboard players set @s dplace 0
execute as @a[tag=ocp] at @s if score @s lap = @e[tag=cp,sort=nearest,limit=1] cplap if score @s cp = @e[tag=cp,sort=nearest,limit=1] cp run scoreboard players operation @s dplace -= @s place
execute as @a[tag=posc] at @s run execute as @e[tag=!posc,scores={place=-10..100}] at @s if score @s place <= @e[tag=posc,limit=1] place run scoreboard players remove @s place 1
execute as @a[tag=ocp] at @s if score @s lap = @e[tag=cp,sort=nearest,limit=1] cplap if score @s cp = @e[tag=cp,sort=nearest,limit=1] cp run scoreboard players add @e[tag=cp,sort=nearest,limit=1] cplace 1
execute as @a[tag=ocp] at @s if score @s cp = @e[tag=cp,sort=nearest,limit=1] cp run scoreboard players add @s cp 1
tag @a[tag=posc] remove posc

































































































































