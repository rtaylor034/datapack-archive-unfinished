

#pack signature
data modify storage slime:param packsignature.name set value "XP Health"
function slime:text/packsignature/run
data modify storage xphealth:items signature set from storage slime:out parse.text
