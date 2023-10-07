#PARAMS - A [rot2mot.rotation -> slime:param ; RotationVector(2)], B [rot2mot.force -> slime:param ; double = 1.0] | rotation vector, force
#OUT - [rot2mot.out -> slime:out ; MotionVector(3)] | motion vector

#{DEPRICATED} OUT - [rot2mot.motion -> slime:out ; MotionVector(3)] | motion vector

#CONTEXT - N/A

#USE - converts the rotation vector [A] to a motion vector {OUT}, scaled depending on [B]. The higher [B] is, the faster the motion.

#NOTE - precision may be lost with high values for [B]

#RESET OUT
data modify storage slime:out rot2mot.motion set value [0.0d,0.0d,0.0d]
execute unless data storage slime:param rot2mot.force run data modify storage slime:param rot2mot.force set value 1.0d

#TRACKING ENTITY
summon marker 0 0 0 {Tags:["slime-rot2mot","slime-rot2mot-b"]}
execute as @e[type=marker,tag=slime-rot2mot-b] at @s run data modify entity @s Rotation set from storage slime:param rot2mot.rotation
execute positioned 0 0 0 align xyz rotated as @e[type=marker,tag=slime-rot2mot-b] run summon marker ^ ^ ^1 {Tags:["slime-rot2mot","slime-rot2mot-r"]}

#motion get
execute as @e[type=marker,tag=slime-rot2mot-r,limit=1,sort=nearest] at @s store result score rot2mot.mot.x slime_var run data get entity @s Pos[0] 100000
execute as @e[type=marker,tag=slime-rot2mot-r,limit=1,sort=nearest] at @s store result score rot2mot.mot.y slime_var run data get entity @s Pos[1] 100000
execute as @e[type=marker,tag=slime-rot2mot-r,limit=1,sort=nearest] at @s store result score rot2mot.mot.z slime_var run data get entity @s Pos[2] 100000

#apply force mult
execute store result score rot2mot.mult slime_var run data get storage slime:param rot2mot.force 100
scoreboard players operation rot2mot.mot.x slime_var *= rot2mot.mult slime_var
scoreboard players operation rot2mot.mot.y slime_var *= rot2mot.mult slime_var
scoreboard players operation rot2mot.mot.z slime_var *= rot2mot.mult slime_var

#OUT
execute store result storage slime:out rot2mot.motion[0] double 0.0000001 run scoreboard players get rot2mot.mot.x slime_var
execute store result storage slime:out rot2mot.motion[1] double 0.0000001 run scoreboard players get rot2mot.mot.y slime_var
execute store result storage slime:out rot2mot.motion[2] double 0.0000001 run scoreboard players get rot2mot.mot.z slime_var

data modify storage slime:out rot2mot.out set from storage slime:out rot2mot.motion

#END
kill @e[type=marker,tag=slime-rot2mot]
data remove storage slime:param rot2mot
scoreboard players reset rot2mot.mot.x slime_var
scoreboard players reset rot2mot.mot.y slime_var
scoreboard players reset rot2mot.mot.z slime_var
scoreboard players reset rot2mot.mult slime_var
