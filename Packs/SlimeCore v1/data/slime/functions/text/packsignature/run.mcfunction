
#PARAMS - A [packsignature.name -> slime:param ; string] | Datapack name
#OUT - [packsignature.text -> slime:out ; jsonText] | Json datapack signature tag
#CONTEXT - console/none

#USE - Generates the standardized Json signature text to indicate that an item is from the datapack named [A] and returns the signature in {OUT}.

#NOTE - [A] should always be set to [packName -> <namespace>:global] as per SlimeCore standards.
#NOTE - This is usually just appended to the lore of every custom item a datapack adds.

data modify storage slime:param parse.json set value '{"nbt":"packsignature.name","storage":"slime:param","interpret":false,"color":"#444488","italic":"false"}'
function slime:text/parse/run
data modify storage slime:out packsignature.signature set from storage slime:out parse.text

#RESETS
data remove storage slime:param packsignature
