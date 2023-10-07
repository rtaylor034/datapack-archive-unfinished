#>slimec:internal/load
#--------------------
# @LOAD
#--------------------

#settings / constants
function slimec:settings

#-SlimeCore Install--
data modify storage slimec:in install set value {name:"SlimeCore", namespace:"slimec", version:1, dependencies:[], downloadmessage:'{"text":"(download SlimeCore)","color":"blue","clickEvent":{"action":"open_url","value":"https://www.minecraftjson.com"},"hoverEvent":{"action":"show_text","contents":[{"text":"(Clickable Link)","color":"gray"}]}}'}
function slimec:api/pack/install
#--------------------

#scoreboards
scoreboard objectives add slimec_in dummy
scoreboard objectives add slimec_out dummy
scoreboard objectives add slimec_var dummy

scoreboard objectives add slimec_menupage dummy