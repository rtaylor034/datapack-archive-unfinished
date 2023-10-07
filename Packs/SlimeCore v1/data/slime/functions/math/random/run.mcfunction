
#PARAMS - A [random.max -> slime:param ; int = 32767] | max
#PARAMS ALT - A (random.max -> slime_var) | max
#OUT - (random.out -> slime_out) | random number

#{DEPRICATED} OUT - (random.number -> slime_out) | random number

#CONTEXT - N/A

#USE - sets {OUT} to a random number between 0 and [A]

#NOTE - It is highly recommended not to set [A] to values higher than 32767. (2^15 - 1).

#RESET OUT
scoreboard players reset random.number slime_out

scoreboard players set random.maxbit slime_var 32767
scoreboard players operation random.max slime_var = random.maxbit slime_var
execute if data storage slime:param random.max store result score random.max slime_var run data get storage slime:param random.max 1

execute if data storage slime:param random.max run scoreboard players add random.max slime_var 1

scoreboard players set random.number slime_out 0
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 1
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 2
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 4
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 8
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 16
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 32
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 64
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 128
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 256
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 512
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 1024
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 2048
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 4096
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 8192
execute if predicate slime:halfchance run scoreboard players add random.number slime_out 16384

#removed to prevent overflow
#execute if predicate slime:halfchance run scoreboard players add random.number slime_out 32768
#execute if predicate slime:halfchance run scoreboard players add random.number slime_out 65536

scoreboard players operation random.number slime_out *= random.max slime_var
scoreboard players operation random.number slime_out /= random.maxbit slime_var

#out set
scoreboard players operation random.out slime_out = random.number slime_out

#FOR DEV CHECKING VALUE
#tellraw @a {"score":{"name":"random.number","objective":"slime_out"}}

#RESETS
scoreboard players reset random.max slime_var
scoreboard players reset random.maxbit slime_var
data remove storage slime:param random
