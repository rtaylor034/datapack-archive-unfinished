#CALL - weaponparse
#parses the augments

#AUGMENT HEADER
#data modify storage cmd:var get.item.tag.display.Lore append value '{"text":" "}'
#data modify block 0 0 0 front_text.messages[0] set value '[{"text":" ","color":"aqua","bold":false,"italic":false},{"text":"Augments:","color":"gold","bold":false,"italic":false,"underlined":false}]'
#data modify storage cmd:var get.item.tag.display.Lore append from block 0 0 0 front_text.messages[0]


#for each aug
data modify storage cmd:var get.augs set from storage cmd:var get.a.weapon.augments
execute if data storage cmd:var get.augs[] run function cmd:ability/item/get/sub/foreachaug
