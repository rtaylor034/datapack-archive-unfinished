

#SUMMONS
execute as @s[tag=red] at @s run summon firework_rocket ~ ~ ~ {Tags:["204e"],Silent:1,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]}]}}},Owner:[I;0,0,0,0]}
execute as @s[tag=blue] at @s run summon firework_rocket ~ ~ ~ {Tags:["204e"],Silent:1,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;2437522]}]}}},Owner:[I;0,0,0,0]}
execute as @s[tag=ffa] at @s run summon firework_rocket ~ ~ ~ {Tags:["204e"],Silent:1,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;1973019,4408131],FadeColors:[I;11250603]}]}}},Owner:[I;0,0,0,0]}

function cmd:tracking/findplayer
data modify entity @e[type=firework_rocket,tag=204e,limit=1,sort=nearest] Owner set from entity @a[tag=found,limit=1] UUID
tag @a remove found


kill @s