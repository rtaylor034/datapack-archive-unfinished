
#\called from players that are holding a bow and alive\

#HOLDING ID
execute store result score @s holdingtier run data get entity @s SelectedItem.tag.tier
execute store result score @s holdingbow run data get entity @s SelectedItem.tag.bowid

#ARROW
execute as @s[scores={bowcooldown=..0}] if score @s arrowcount >= @s holdingtier run item replace entity @s inventory.0 with arrow{display:{Name:'{"color":"#666666","text":"Arrow Slot","italic":false}',Lore:['[{"text":"Do not","color":"#888888","bold":true,"italic":false},{"text":" put anything in","color":"#888888","bold":false,"italic":false}]','{"text":"this slot!","color":"#888888","bold":false,"italic":false}']},arrow:1,killground:1} 1

#\[DEPRICATED]\
#execute if score @s arrowcount < @s holdingtier run replaceitem entity @p inventory.0 black_stained_glass_pane{display:{Name:'{"text":"Arrow Slot","italic":false}',Lore:['[{"text":"Do not","color":"#888888","bold":true,"italic":false},{"text":" put anything in","color":"#888888","bold":false,"italic":false}]','{"text":"this slot!","color":"#888888","bold":false,"italic":false}']},arrow:1} 2


#SNIPER BOW SNEAK
execute as @s[scores={holdingbow=302}] at @s run function cmd:arrows/302/playerhold
