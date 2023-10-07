
#Finds all players on the opposing team and marks them with tag "tteam"
#Use on entities with tags specifying their tteam

#IMPORTANT - Remove tag "tteam" in the same tick

execute as @s[tag=red] run tag @a[team=blue] add tteam
execute as @s[tag=blue] run tag @a[team=red] add tteam
tag @a[team=ffa] add tteam
