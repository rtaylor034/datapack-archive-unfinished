
#Called when teleporter has an item

#EFFECT
tp @s ~ ~ ~ ~23 ~
particle witch ^ ^.5 ^.43 0 0 0 0 1
particle witch ^ ^.5 ^-.43 0 0 0 0 1

#TELEPORT CHECK
execute positioned ~ ~.5 ~ run tag @a[distance=0..0.5,scores={gcon_sneak=1..},tag=!gcholdsneak] add gctpplayer
execute positioned ~ ~.5 ~ if entity @a[tag=gctpplayer,distance=0..0.5] at @s run function gconstruct:teleporter/teleporttrigger
tag @a[tag=gctpplayer] add gcholdsneak
tag @a remove gctpplayer

#FORCELOAD
forceload add ~ ~
