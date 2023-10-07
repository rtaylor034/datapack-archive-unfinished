,GENERAL USE INFO

install-commands should be the first command to run in all packs LOAD functions

'namespace' represents a datapack namespace (ex: "slimec") as a string

'pack info' is the standard object that holds installation information about a datapack:
{name: string, namespace: string, version: int, dependencies: (pack info[]), downloadmsg: fixed jsonText}

instead of @TICK calling a datapack's internal/tick function, it should be called by the last line of internal/load and recursively schedule itself.
this is so if the install-commands detect an uninstalled dependency, the pack will not run its load or tick function.

limitations of datapack execution order may lead to issues while trying to install multiple packs at once, see {settings -> forceInstall}

to "update" a pack is to remove the old datapack folder and add the new one, no uninstallation needed

>> DEV >>
packs shouldn't install themselves, they should be "prepped" for install, and then confirm installed via a delayed function

SLIMECORE COLOR: #385AE0 : 56 90 224