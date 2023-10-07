
scoreboard players add #GAME gameseconds 1
execute if score #GAME gameseconds matches 60.. run scoreboard players add #GAME gameminutes 1
execute if score #GAME gameseconds matches 60.. run scoreboard players set #GAME gameseconds 0

#BOSSBAR NAME
execute if score #GAME gameseconds matches 10.. run bossbar set standard:main name ["",{"score":{"name":"#BLUE","objective":"points"},"bold":true,"color":"blue"},{"text":"                   "},{"score":{"name":"#GAME","objective":"gameminutes"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"#GAME","objective":"gameseconds"},"color":"white"},{"text":"                   "},{"score":{"name":"#RED","objective":"points"},"bold":true,"color":"#FF0800"}]
execute if score #GAME gameseconds matches ..9 run bossbar set standard:main name ["",{"score":{"name":"#BLUE","objective":"points"},"bold":true,"color":"blue"},{"text":"                   "},{"score":{"name":"#GAME","objective":"gameminutes"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"#GAME","objective":"gameseconds"},"color":"white"},{"text":"                   "},{"score":{"name":"#RED","objective":"points"},"bold":true,"color":"#FF0800"}]

#RECUR
schedule function cmd:game/standard/timer/sec 1s
