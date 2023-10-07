
#IMPACT

effect give @a[distance=0..3.5] speed 7 1
effect give @a[distance=0..3.5] jump_boost 7 1
playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 2
particle effect ~ ~.2 ~ 1.5 0.2 1.5 1 40 force

function cmd:tracking/killtracker
kill @s
