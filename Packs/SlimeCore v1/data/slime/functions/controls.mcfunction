
#Change these values freely, meant for customizability




# === FREE BLOCK LOCATION ===
#this controls the location in which location-requiring methods take place (such as sign parsing)
#the block at this location will be set to bedrock, so put it somewhere innaccessable/out of the way
#this must be a Position Vector of doubles.
#IMPORTANT - Make sure the chunk that includes this location is forceloaded
data modify storage slime:controls freeBlock set value [0.5d, -63.5d, 0.5d]
forceload add -1 -1 0 0
