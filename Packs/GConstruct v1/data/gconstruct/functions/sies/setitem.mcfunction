
#SET
data modify block ~ ~ ~ Items[{Slot:7b}].tag.siesItem set from block ~ ~ ~ Items[{Slot:3b}]
data remove block ~ ~ ~ Items[{Slot:7b}].tag.siesItem.Count
#TAG
tag @s add gcsiesis

