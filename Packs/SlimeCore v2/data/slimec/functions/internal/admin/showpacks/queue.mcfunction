#>slimec:internal/admin/showpacks/queue
#--------------------
# - api/admin/showpacks
#--------------------

scoreboard players remove $showpacks-offset slimec_var 1

execute if score $showpacks-offset slimec_var <= $showpacks-amount slimec_var run function slimec:internal/admin/showpacks/add

#cycle
data remove storage slimec:var showpacks.queue[0]
execute if score $showpacks-offset slimec_var matches 1.. if data storage slimec:var showpacks.queue[0] run function slimec:internal/admin/showpacks/queue