#call to return everybody back to lobby

tp @a @e[type=area_effect_cloud,limit=1,sort=nearest,tag=lobby]
scoreboard players set @a playerstate 0
gamemode adventure @a
