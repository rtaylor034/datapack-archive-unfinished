
#Called when player is hit and is below threshold (8 hearts)

#VFX
particle minecraft:large_smoke ~ ~30 ~ 0 30 0 0.15 100 force
playsound entity.blaze.death player @a ~ ~ ~ 1 2
playsound entity.wither.spawn player @s ~ ~ ~ 1 0.8
particle minecraft:large_smoke ~ ~1 ~ 0.2 0.2 0.2 0.15 70 force
particle minecraft:smoke ~ ~1 ~ 0.2 0.2 0.2 0.3 200 force
particle minecraft:soul ~ ~1 ~ 0.2 0.2 0.2 0.05 50 force
particle minecraft:warped_spore ~ ~1 ~ 0.2 0.2 0.2 1 150 force

summon firework_rocket ~ ~1 ~ {Silent:1,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;1973019,8073150,4408131],FadeColors:[I;1973019]},{Type:2,Flicker:0,Trail:1,Colors:[I;11743532,8073150,15790320],FadeColors:[I;1973019,8073150]}]}}}}

#KILL
kill @s
