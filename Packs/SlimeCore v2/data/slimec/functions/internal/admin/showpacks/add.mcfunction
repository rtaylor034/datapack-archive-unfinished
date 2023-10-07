#>slimec:internal/admin/showpacks/add
#--------------------
# - internal/admin/showpacks/queue
#--------------------

data modify storage slimec:var showpacks.show prepend from storage slimec:var showpacks.queue[0]
data modify storage slimec:var showpacks.show[0].status set from storage slimec:var showpacks.addstatus