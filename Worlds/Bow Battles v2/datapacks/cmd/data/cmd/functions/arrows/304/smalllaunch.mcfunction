
#EFFECT
effect give @s minecraft:levitation 1 85 true
tag @s add 304launch

#VFX
particle block bedrock ~ ~ ~ 0.5 0 0.5 1 20 force
playsound minecraft:entity.player.attack.knockback block @a ~ ~ ~ 0.5 0.7
