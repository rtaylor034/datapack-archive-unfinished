
#adds next arrow to item array

#page display
scoreboard players add display.list.page var 2

#BASE ITEM
data modify storage cmd:var display.items prepend value {Count:1b,id:"minecraft:slime_ball",tag:{display:{Name:'{"text":"next page"}'}}}

#NAME
#sign parse
data modify block 0 0 0 front_text.messages[0] set value '[{"text":"[Page ","color":"gray","bold":true,"italic":false},{"score":{"name":"display.list.page","objective":"var"},"color":"gray","bold":true,"italic":false},{"text":"]","color":"gray","bold":true,"italic":false}]'
data modify storage cmd:var display.items[0].tag.display.Name set from block 0 0 0 front_text.messages[0]

#MODEL DATA
data modify storage cmd:var display.items[0].tag.CustomModelData set from storage cmd:controls/display itemIcon.rightArrow


#SLOT
data modify storage cmd:var display.items[0].Slot set from storage cmd:var display.list.nextPageSlot

#TAG
#store list data
data modify storage cmd:var display.items[0].tag.list set from storage cmd:var display.store.list
data modify storage cmd:var display.items[0].tag.list.displayitems set from storage cmd:var display.store.items
#page set
scoreboard players remove display.list.page var 1
execute store result storage cmd:var display.items[0].tag.list.page int 1 run scoreboard players get display.list.page var
#page reset
scoreboard players remove display.list.page var 1
