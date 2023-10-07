

#respawn
execute as @s[tag=xphealth-dead,nbt={DeathTime:0s}] run function xphealth:player/death/respawn

#changes
execute unless score @s xphealth_xpT = @s xphealth_prevxp run function xphealth:player/xpchange
execute unless score @s xphealth_healthT = @s xphealth_prevhealth run function xphealth:player/healthchange


#update timer
execute as @s[tag=!xphealth-dead,gamemode=!creative,gamemode=!spectator] run scoreboard players remove @s xphealth_timer 1
execute as @s[tag=!xphealth-dead,scores={xphealth_timer=..0}] run function xphealth:player/decay

#death
execute as @s[tag=xphealth-dying] run function xphealth:player/death/ticking
