#called every tick from all players in zone 4
#red shop

execute as @s[team=red] run function cmd:player/zones/inallyshop
execute as @s[team=blue] run function cmd:player/zones/inenemyshop
