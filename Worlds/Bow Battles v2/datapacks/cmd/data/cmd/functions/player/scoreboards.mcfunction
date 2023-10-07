
#\id of bow the player is holding\
scoreboard objectives add holdingbow dummy
scoreboard objectives add holdingtier dummy

#\bow cooldown\
scoreboard objectives add bowcooldown dummy


#STATS
#\all stats must be set before game\
#\ticks between gaining an arrow (arrow refresh rate) (default 36)\
scoreboard objectives add arrowdelay dummy
scoreboard objectives add maxarrows dummy
#main currency tracking
scoreboard objectives add gold dummy
#currency gain Timer
scoreboard objectives add goldtimer dummy
#currency gain rate
scoreboard objectives add goldrate dummy
#Timer keeps track of timer, time is what timer is set too when die (increases with time)
scoreboard objectives add respawntimer dummy
scoreboard objectives add respawntime dummy

#\special\
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add armor armor
