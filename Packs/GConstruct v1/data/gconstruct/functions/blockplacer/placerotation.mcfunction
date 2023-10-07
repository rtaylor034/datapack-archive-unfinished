#called from gcbDropper when first being placed

#ROTATION STORE
tp @s ~ ~ ~ facing entity @p
execute at @s store result score #gcbrot gcon_local run data get entity @s Rotation[0]
execute at @s store result score #gcbrot2 gcon_local run data get entity @s Rotation[1]

#MATH
execute if score #gcbrot gcon_local matches ..-1 run scoreboard players operation #gcbrot gcon_local += 360 integer
execute if score #gcbrot2 gcon_local matches 65.. run scoreboard players set #gcbrot gcon_local -1
execute if score #gcbrot2 gcon_local matches ..-40 run scoreboard players set #gcbrot gcon_local -1


#BLOCK PLACE
#SIDES
execute if score #gcbrot gcon_local matches 316..360 run setblock ~ ~ ~ dropper[facing=south]{CustomName:'{"text":"Block Dropper"}'} destroy

execute if score #gcbrot gcon_local matches 0..45 run setblock ~ ~ ~ dropper[facing=south]{CustomName:'{"text":"Block Dropper"}'} destroy

execute if score #gcbrot gcon_local matches 46..135 run setblock ~ ~ ~ dropper[facing=west]{CustomName:'{"text":"Block Dropper"}'} destroy

execute if score #gcbrot gcon_local matches 136..225 run setblock ~ ~ ~ dropper[facing=north]{CustomName:'{"text":"Block Dropper"}'} destroy

execute if score #gcbrot gcon_local matches 226..315 run setblock ~ ~ ~ dropper[facing=east]{CustomName:'{"text":"Block Dropper"}'} destroy

#UPDOWN
execute if score #gcbrot2 gcon_local matches 65.. run setblock ~ ~ ~ dropper[facing=down]{CustomName:'{"text":"Block Dropper"}'} destroy
execute if score #gcbrot2 gcon_local matches ..-40 run setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Block Dropper"}'} destroy

#FACING ENTITY
execute if score #gcbrot gcon_local matches 316..360 run tp @s ~ ~ ~ facing ~ ~ ~1
execute if score #gcbrot gcon_local matches 0..45 run tp @s ~ ~ ~ facing ~ ~ ~1
execute if score #gcbrot gcon_local matches 46..135 run tp @s ~ ~ ~ facing ~-1 ~ ~
execute if score #gcbrot gcon_local matches 136..225 run tp @s ~ ~ ~ facing ~ ~ ~-1
execute if score #gcbrot gcon_local matches 226..315 run tp @s ~ ~ ~ facing ~1 ~ ~

execute if score #gcbrot2 gcon_local matches 65.. run tp @s ~ ~ ~ facing ~ ~-1 ~
execute if score #gcbrot2 gcon_local matches ..-40 run tp @s ~ ~ ~ facing ~ ~1 ~










#SCOREBOARD
scoreboard players set @s gcon_gtimer 0
