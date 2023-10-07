
#PARAMS - [parse.json -> slime:param ; dynamic jsonText] | Text to be parsed
#OUT - [parse.text -> slime:out ; fixed jsonText] | parsed text
#CONTEXT - console/none

#USE - Modifies the messages[0] nbt of a sign to have [A], so that variable fields are parsed to text fields, and returns it back to {OUT}.

#NOTE - This method does not have context to the runner entity, so [A] cannot include context dependent selectors (Such as @s). If you must use entity selectors in [A], use them as if they are being used in a console command.
#EX: GOOD - @a[tag=veryspecifictag,limit=1]
#EX: BAD - @a[distance=0..1,limit=1,sort=nearest]

#marker
summon marker ~ ~ ~ {Tags:["slime-parse"]}
data modify entity @e[type=marker,tag=slime-parse,limit=1,sort=nearest] Pos set from storage slime:controls freeBlock
execute at @e[type=marker,tag=slime-parse] run function slime:text/parse/work

#RESET
data remove storage slime:param parse
kill @e[type=marker,tag=slime-parse]
