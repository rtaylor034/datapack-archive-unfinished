
#FIRSTJOIN
execute as @e[type=area_effect_cloud,tag=gcsies] at @s run function gconstruct:sies/secupdate

#PRESSURE
#function gconstruct:pressure/secupdate


#RECUR
schedule function gconstruct:sectick 1s
