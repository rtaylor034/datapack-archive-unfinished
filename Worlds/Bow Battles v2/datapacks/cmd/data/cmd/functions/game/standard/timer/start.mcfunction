
#BOSSBARS
bossbar add standard:main ""
bossbar set standard:main style notched_20
bossbar set standard:main color white
bossbar set standard:main name ["",{"score":{"name":"#BLUE","objective":"points"},"bold":true,"color":"blue"},{"text":"   "},{"score":{"name":"#GAME","objective":"gameminutes"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"#GAME","objective":"gameseconds"},"color":"white"},{"text":"   "},{"score":{"name":"#RED","objective":"points"},"bold":true,"color":"#FF0800"}]
bossbar set standard:main players @a


scoreboard players set #GAME gameseconds -1
scoreboard players set #GAME gameminutes 0

#FUNCT
schedule clear cmd:game/standard/timer/sec
function cmd:game/standard/timer/sec

#
