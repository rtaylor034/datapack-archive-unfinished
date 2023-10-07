
#IN - A [mot2rot.motion -> slime:param ; MotionVector(3)] | motion vector
#OUT - [mot2rot.out -> slime:out ; RotationVector(2)] | rotation vector

#{DEPRICATED} OUT - [mot2rot.rotation -> slime:out ; RotationVector(2)] | rotation vector

#CONTEXT - N/A

#USE - converts the motion vector [A] to a rotation vector {OUT}.


#RESET OUT
data modify storage slime:out mot2rot.rotation set value [0.0f,0.0f]

#TRACKING ENTITYs
execute positioned 0 0 0 align xyz run summon marker ~ ~ ~ {Tags:["slime-mot2rot","slime-mot2rot-b"]}
summon marker 0 0 0 {Tags:["slime-mot2rot","slime-mot2rot-m"]}

#set position
execute as @e[type=marker,tag=slime-mot2rot-m] at @s run data modify entity @s Pos set from storage slime:param mot2rot.motion

#rotation
execute as @e[type=marker,tag=slime-mot2rot-b] at @s run teleport @s ~ ~ ~ facing entity @e[type=marker,tag=slime-mot2rot-m,limit=1,sort=nearest]

#{DEPRICATED} out set
data modify storage slime:out mot2rot.rotation set from entity @e[type=marker,tag=slime-mot2rot-b,limit=1,sort=nearest] Rotation

#out set
data modify storage slime:out mot2rot.out set from storage slime:out mot2rot.rotation


#END
kill @e[type=marker,tag=slime-mot2rot]
data remove storage slime:param mot2rot
