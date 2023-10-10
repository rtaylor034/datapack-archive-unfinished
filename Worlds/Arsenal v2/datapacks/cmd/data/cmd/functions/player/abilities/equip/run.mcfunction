
#IN - @s, A (equip.id -> var), B (equip.slot -> var) | ability id, slot id
#OUT - A (equip.out -> var), B [equip.replaced -> cmd:var ; Player Ability Obj] | success?, replaced ability

#USE - equips the ability specified in (IN A) to this player's tracker's ability array to the slot specified in (IN B).

#NOTE - This searches for the ability id in [array -> cmd:controls/abilities], and copies its data
#NOTE - if the ability is a weapon ability (has {weapon} arguement), this will generate the appropriate ability object. This MUST be called anytime the player's weapon augments or path changes.

#FIND TRACKER
function cmd:player/tracker/find/run

#reference var
data modify storage cmd:var equip.slots set from entity @e[type=minecraft:marker,tag=track,limit=1] data.abilities

#CYCLETO SLOT
data modify storage cmd:process/array/cycleto array set from storage cmd:var equip.slots
execute store result storage cmd:process/array/cycleto tag.slot int 1 run scoreboard players get equip.slot var
function cmd:process/array/cycleto/run
data modify storage cmd:var equip.slots set from storage cmd:process/array/cycleto out

#OUT
scoreboard players operation equip.out var = cycleto.out var
execute if score cycleto.out var matches 1.. run say ERE

#replaced out
data modify storage cmd:var equip.replaced set from storage cmd:var equip.slots[0]

#EQUIP ABILITY
#only runs if a valid slot was found in previous cycleto
execute if score equip.out var matches 1.. run function cmd:player/abilities/equip/cycleability




#RESETS
function cmd:player/tracker/unfind/run
data remove storage cmd:var equip.slots
data remove storage cmd:var equip.a
