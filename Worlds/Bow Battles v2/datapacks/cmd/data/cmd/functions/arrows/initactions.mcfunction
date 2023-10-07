
#\called after arrow is initialized, but before shoot is set to 0 and init is removed\
#\called from the init arrow\
#\child function of initarrow\

#AUTO BOW
execute as @s[scores={arrowid=201}] at @s run function cmd:arrows/201/initaction

#SNIPER
execute as @s[scores={arrowid=302}] at @s run function cmd:arrows/302/initaction

#COMBO
execute as @s[scores={arrowid=208}] at @s run function cmd:arrows/208/initaction
