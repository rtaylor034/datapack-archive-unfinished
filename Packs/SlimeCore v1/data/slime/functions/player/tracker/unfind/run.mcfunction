
#IN - (@s -> slime_playerid) | playerid
#OUT - N/A
#CONTEXT - this player

#USE - Removes "slime-foundtracker" from this players tracker, should be called once in the same function after tracker/find/run has been called


# # # # # NEVER EVER REMOVE "slime-foundtracker" TAG MANUALLY, PLEASE USE THIS FUNCTION # # # # #

#NOTE - Call this function instead of simply removing the "slime-foundtracker" tag at the end of a function. Using this prevents tracker find stack complications.
#NOTE - IMPORTANT - This process **ABSOLUTELY MUST** be used EXACTLY ONCE every time tracker/find/run has been called in the same function.
#NOTE - IMPORTANT - **DO NOT** remove the "slime-foundtracker" tag manually or tamper with the (slime_trackcount -> @s) score. This could lead to extreme issues.

scoreboard players operation trackfind.id slime_var = @s slime_playerid
execute as @e[type=minecraft:marker,tag=slime-tracker,tag=!slime-reset-tracker] if score @s slime_playerid = trackfind.id slime_var run scoreboard players remove @s slime_trackcount 1
tag @e[type=marker,tag=slime-foundtracker,scores={slime_trackcount=..0}] remove slime-foundtracker

scoreboard players reset trackfind.id slime_var
