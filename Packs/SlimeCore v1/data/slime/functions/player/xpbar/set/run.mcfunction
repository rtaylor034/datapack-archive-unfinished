
#IN OPT - @s, a [set.level -> slime:param ; int], b (set.percentage -> slime:param ; int) | level, bar percentage
#OUT - N/A
#CONTEXT - player @s

#USE - Sets this player's XP level to [a], and XP bar percentage to [b].


#NOTE - technically, [b] is out of 101 and not 100.
#NOTE - highest level this command supports is 1023


#if levels not specified, set [a] to players current level.
execute unless data storage slime:param set.level store result storage slime:param set.level int 1 run xp query @s levels

#base level (sets max xp points to 101)
xp set @s 28 levels
xp set @s 0 points

execute store result score xptarget slime_var run data get storage slime:param set.percentage
#points - addition and difference calc (uses 6 bit binary count - up to 127)
execute if score xptarget slime_var matches 64.. run xp add @s 64 points
execute if score xptarget slime_var matches 64.. run scoreboard players remove xptarget slime_var 64
execute if score xptarget slime_var matches 32.. run xp add @s 32 points
execute if score xptarget slime_var matches 32.. run scoreboard players remove xptarget slime_var 32
execute if score xptarget slime_var matches 16.. run xp add @s 16 points
execute if score xptarget slime_var matches 16.. run scoreboard players remove xptarget slime_var 16
execute if score xptarget slime_var matches 8.. run xp add @s 8 points
execute if score xptarget slime_var matches 8.. run scoreboard players remove xptarget slime_var 8
execute if score xptarget slime_var matches 4.. run xp add @s 4 points
execute if score xptarget slime_var matches 4.. run scoreboard players remove xptarget slime_var 4
execute if score xptarget slime_var matches 2.. run xp add @s 2 points
execute if score xptarget slime_var matches 2.. run scoreboard players remove xptarget slime_var 2
execute if score xptarget slime_var matches 1.. run xp add @s 1 points
execute if score xptarget slime_var matches 1.. run scoreboard players remove xptarget slime_var 1

#levels - addition and difference calc (uses 8 bit binary count - up to 1023)
xp set @s 0 levels
execute store result score xptarget slime_var run data get storage slime:param set.level
execute if score xptarget slime_var matches 512.. run xp add @s 512 levels
execute if score xptarget slime_var matches 512.. run scoreboard players remove xptarget slime_var 512
execute if score xptarget slime_var matches 256.. run xp add @s 256 levels
execute if score xptarget slime_var matches 256.. run scoreboard players remove xptarget slime_var 256
execute if score xptarget slime_var matches 128.. run xp add @s 128 levels
execute if score xptarget slime_var matches 128.. run scoreboard players remove xptarget slime_var 128
execute if score xptarget slime_var matches 64.. run xp add @s 64 levels
execute if score xptarget slime_var matches 64.. run scoreboard players remove xptarget slime_var 64
execute if score xptarget slime_var matches 32.. run xp add @s 32 levels
execute if score xptarget slime_var matches 32.. run scoreboard players remove xptarget slime_var 32
execute if score xptarget slime_var matches 16.. run xp add @s 16 levels
execute if score xptarget slime_var matches 16.. run scoreboard players remove xptarget slime_var 16
execute if score xptarget slime_var matches 8.. run xp add @s 8 levels
execute if score xptarget slime_var matches 8.. run scoreboard players remove xptarget slime_var 8
execute if score xptarget slime_var matches 4.. run xp add @s 4 levels
execute if score xptarget slime_var matches 4.. run scoreboard players remove xptarget slime_var 4
execute if score xptarget slime_var matches 2.. run xp add @s 2 levels
execute if score xptarget slime_var matches 2.. run scoreboard players remove xptarget slime_var 2
execute if score xptarget slime_var matches 1.. run xp add @s 1 levels
execute if score xptarget slime_var matches 1.. run scoreboard players remove xptarget slime_var 1

#STOPSOUND
stopsound @s * minecraft:entity.player.levelup


#RESETS
scoreboard players reset xptarget slime_var
data remove storage slime:param set
