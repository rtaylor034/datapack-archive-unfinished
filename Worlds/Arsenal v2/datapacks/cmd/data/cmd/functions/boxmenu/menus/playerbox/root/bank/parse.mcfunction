

#modeldata
data modify storage cmd:var display.items[0].tag.CustomModelData set from storage cmd:controls/display itemIcon.bank

#name
data modify storage cmd:var display.items[0].tag.display.Name set value '{"text":"Bank","underlined":false,"color":"dark_green","italic":false,"bold":true}'


#lore
data modify block 0 0 0 front_text.messages[0] set value '[{"score":{"name":"@p[tag=boxmenu-owner]","objective":"currency_c"},"color":"gold","bold":false,"italic":true},{"text":"c","color":"gold","bold":false,"italic":true}]'
data modify storage cmd:var display.items[0].tag.display.Lore append from block 0 0 0 front_text.messages[0]
data modify block 0 0 0 front_text.messages[0] set value '[{"score":{"name":"@p[tag=boxmenu-owner]","objective":"currency_t"},"color":"aqua","bold":false,"italic":true},{"text":"t","color":"aqua","bold":false,"italic":true}]'
data modify storage cmd:var display.items[0].tag.display.Lore append from block 0 0 0 front_text.messages[0]
