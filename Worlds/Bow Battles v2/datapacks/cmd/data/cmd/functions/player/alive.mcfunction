
#\called every tick from all alive players (playerstate=1)\


#COOLDOWN
scoreboard players remove @s[scores={bowcooldown=1..}] bowcooldown 1


#SHOOT ARROW
execute as @s[scores={shoot=1..}] at @s run function cmd:register/initarrow

#HOLDING BOW
execute as @s[nbt=!{Inventory:[{Slot:9b,tag:{arrow:1}}]}] run function cmd:player/cleararrowslot
item replace entity @s inventory.0 with black_stained_glass_pane{display:{Name:'{"color":"#666666","text":"Arrow Slot","italic":false}',Lore:['[{"text":"Do not","color":"#888888","bold":true,"italic":false},{"text":" put anything in","color":"#888888","bold":false,"italic":false}]','{"text":"this slot!","color":"#888888","bold":false,"italic":false}']},arrow:1,killground:1} 1
execute as @s[nbt={SelectedItem:{tag:{bow:1}}}] at @s run function cmd:player/holdingbow
execute as @s[nbt=!{SelectedItem:{tag:{bow:1}}}] at @s run scoreboard players set @s holdingbow 0

#BOW SPECIFIC COMMANDS
function cmd:player/boweffects

#DIE TICK
execute as @s[scores={dietick=1..}] at @s run function cmd:player/dietick

#SPECIAL KILLS CHECK
execute as @s[tag=explodeowner] at @s run function cmd:player/explodeownercheck

#KILL REGISTER
execute as @s[scores={enemykills=1..}] at @s run function cmd:player/kills/killregister
execute as @s[scores={allykills=1..}] at @s run function cmd:player/kills/killregister

#ARROWS
function cmd:player/arrowcount/base

#GOLD
function cmd:player/gold/base

#ZONES
function cmd:player/zones/base



#TITLE GUI
execute as @s[scores={bowcooldown=1..}] at @s run function cmd:player/gui/cooldown
function cmd:player/gui/actionbar

#SPAWNPOINT
spawnpoint @s ~ ~ ~ ~
