
#\Called from player that has tag "explodeowner"\
#\when an explosion goes off, this is the owner of the explosion.\

#KILL COUNTS
execute as @a[tag=!explodeowner,tag=explodedeath,team=red] as @a[tag=explodeowner,team=red] at @s run scoreboard players add @s allykills 1
execute as @a[tag=!explodeowner,tag=explodedeath,team=red] as @a[tag=explodeowner,team=blue] at @s run scoreboard players add @s enemykills 1
execute as @a[tag=!explodeowner,tag=explodedeath,team=blue] as @a[tag=explodeowner,team=red] at @s run scoreboard players add @s enemykills 1
execute as @a[tag=!explodeowner,tag=explodedeath,team=blue] as @a[tag=explodeowner,team=blue] at @s run scoreboard players add @s allykills 1
execute as @a[tag=!explodeowner,tag=explodedeath,team=ffa] as @a[tag=explodeowner,team=ffa] at @s run scoreboard players add @s enemykills 1



tag @s remove explodeowner



