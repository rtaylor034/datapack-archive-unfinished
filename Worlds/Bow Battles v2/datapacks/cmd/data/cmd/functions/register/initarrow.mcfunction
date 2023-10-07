
#\standard function for initializing the arrow shot by a player\

#\is called whenenever a player shoots an arrow\

#ARROW COUNT REMOVAL
scoreboard players operation @s arrowcount -= @s holdingtier
function cmd:player/arrowcount/displayupdate

#COOLDOWN
execute store result score @s bowcooldown run data get entity @s SelectedItem.tag.cooldown

#PLAYERID
execute anchored eyes positioned ^ ^ ^.1 run tag @e[type=arrow,limit=1,sort=nearest] add init
scoreboard players operation @e[type=arrow,tag=init,limit=1,sort=nearest] ownerid = @s playerid

#BOWID
execute store result score @e[type=arrow,tag=init,limit=1,sort=nearest] arrowid run data get entity @s SelectedItem.tag.bowid
execute unless data entity @s SelectedItem.tag.bowid store result score @e[type=arrow,tag=init,limit=1,sort=nearest] arrowid run data get entity @s Inventory[{Slot:-106b}].tag.bowid


#TEAM
execute as @s[team=red] at @s run tag @e[type=arrow,tag=init,limit=1,sort=nearest] add red
execute as @s[team=blue] at @s run tag @e[type=arrow,tag=init,limit=1,sort=nearest] add blue
execute as @s[team=ffa] at @s run tag @e[type=arrow,tag=init,limit=1,sort=nearest] add ffa

#POST
execute as @e[type=arrow,tag=init,limit=1,sort=nearest] at @s run function cmd:arrows/initactions
tag @e[type=arrow] remove init
scoreboard players set @s shoot 0




