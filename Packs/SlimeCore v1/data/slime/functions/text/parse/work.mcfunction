

#sign
setblock ~ ~ ~ minecraft:oak_sign

#text
data modify block ~ ~ ~ messages[0] set from storage slime:param parse.json
data modify storage slime:out parse.text set from block ~ ~ ~ messages[0]

#bedrock
setblock ~ ~ ~ bedrock
