
#MOTION
data modify storage slime:param rot2mot.rotation set from entity @s Rotation
execute if entity @a[distance=0..4] run data modify storage slime:param rot2mot.force set value -1.8
execute if entity @a[distance=4..8] run data modify storage slime:param rot2mot.force set value -1.2
execute if entity @a[distance=8..13] run data modify storage slime:param rot2mot.force set value -0.7
execute if entity @a[distance=13..] run data modify storage slime:param rot2mot.force set value -.1
function slime:math/rot2mot/run

data modify entity @s Motion[0] set from storage slime:out rot2mot.motion[0]
data modify entity @s Motion[2] set from storage slime:out rot2mot.motion[2]
data modify entity @s Motion[1] set value 0.4
