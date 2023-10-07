#>slimec-settings

#>-------------------
# > forceInstall : bool
# default: false
#-------------------
#~ force all datapacks to install/re-install on reload, regardless of errors or previous installs
#-------------------
#- may be useful if trying to install multiple datapacks at once
#- only set to 'true' if you are certain that all datapacks will run with no issue 
#- not recommended to be kept as 'true' after initial installations
#-------------------
data modify storage slimec:settings forceInstall set value false

#>-------------------
# > sharedNamespaces : string[] (namespace[])
# default: []
#-------------------
#~ namespaces that are allowed to be used by multiple datapacks
#-------------------
#- allowing shared namespaces is advised against unless no alternative exists
#- primarily used to ignore clashing namespace errors
#- if used, be aware of potential (and possibly critical) interference
#-------------------
data modify storage slimec:settings sharedNamespaces set value []

#>-------------------
# > showpacksPageSize : int
# default: 8
#-------------------
#~ number of datapacks shown per page when [api/admin/showpacks] is run
#-------------------
data modify storage slimec:settings showpacksPageSize set value 8

#>-------------------