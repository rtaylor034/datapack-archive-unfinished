

#\CustomModelData format\
#\BLOCK (400#)\
#\ITEM (410#)\
#\GUI (420#)\
#GENERAL SCOREBOARDS
scoreboard objectives add gtimer dummy
scoreboard objectives add gcon_gtimer dummy
scoreboard objectives add gcon_local dummy
scoreboard objectives add gcon_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add gcon_count dummy
scoreboard objectives add gcon_success dummy
scoreboard objectives add gcon_sneak minecraft.custom:minecraft.sneak_time

#bad use of local, but still required for some functions, change if possible
scoreboard objectives add local dummy

#BLOCK REDSTONE TRIGGER
scoreboard objectives add gcon_btriggered dummy

#CONSTRUCTOR
scoreboard objectives add gcon_craft dummy
scoreboard objectives add gcon_ccount dummy

#TELEPORTER
scoreboard objectives add gcon_tpfound dummy

#BLOCKS
scoreboard objectives add gcon_blockid dummy

#SIES
scoreboard objectives add gcon_siesadd dummy
scoreboard objectives add gcon_siesout dummy

#FILTER
scoreboard objectives add gcon_filtermatch dummy
scoreboard objectives add gcon_filtercount dummy

#PRESSURE
scoreboard objectives add gcon_prtimer dummy


#MESSAGE
tellraw @a {"color":"gray","text":"GConstruct - Loaded"}


#GUI STORAGE
#SIES
data modify storage gconstruct:gui/sies Items set value [{Slot:7b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4204,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:0b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:1b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:2b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:4b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:6b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4202,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:8b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4203,gcGUI:1,display:{Name:'{"text":""}'}}}]

#TELEPORTER
data modify storage gconstruct:gui/teleporter Items set value [{Slot:0b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:2b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:3b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:4b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:5b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:6b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:7b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:8b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}}]

#FILTER
data modify storage gconstruct:gui/filter Items set value [{Slot:0b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:2b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:3b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:1b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:5b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:6b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:7b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}},{Slot:8b,id:"minecraft:clock",Count:1b,tag:{CustomModelData:4201,gcGUI:1,display:{Name:'{"text":""}'}}}]


#INTS
function gconstruct:integers

#SIGN
execute unless entity @e[type=area_effect_cloud,tag=gcsignmark] run schedule function gconstruct:generatesign 5s
#SECOND TICK
schedule clear gconstruct:sectick
schedule function gconstruct:sectick 1s
