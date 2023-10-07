#>slimec:internal/admin/showpacks/show
#--------------------
# - api/admin/showpacks
#--------------------

data modify storage slimec:var showpacks.pack set from storage slimec:var showpacks.show[0]

#loop
data remove storage slimec:var showpacks.show[0]
execute if data storage slimec:var showpacks.show[0] run function slimec:internal/admin/showpacks/show