#IN - A [rgb2decimal.rgb -> slime:param ; Obj{r:<int>, g:<int>, b:<int>}] | RGB value
#OUT - (rgb2decimal.out -> slime_out) | decimal value

#{DEPRICATED} OUT - (rgb2decimal.decimal -> slime_out) | decimal value

#USE - converts [A] RGB values to a decimal number {OUT}. (#RRGGBB -> decimal integer).

#NOTE - [A] value ranges from -255 to 255. an example would be {r:255, g:0, b:128}.
#NOTE - The only real use case for this is leather armor dying tbh



#STORE
execute store result score rgb2decimal.red slime_var run data get storage slime:param rgb2decimal.rgb.r 65536
execute store result score rgb2decimal.green slime_var run data get storage slime:param rgb2decimal.rgb.g 256
execute store result score rgb2decimal.blue slime_var run data get storage slime:param rgb2decimal.rgb.b 1
#ADD
scoreboard players operation rgb2decimal.decimal slime_out = rgb2decimal.red slime_var
scoreboard players operation rgb2decimal.decimal slime_out += rgb2decimal.green slime_var
scoreboard players operation rgb2decimal.decimal slime_out += rgb2decimal.blue slime_var

#out set
scoreboard players operation rgb2decimal.out slime_out = rgb2decimal.decimal slime_out



#RESETS
data remove storage slime:param rgb2decimal
scoreboard players reset rgb2decimal.red slime_var
scoreboard players reset rgb2decimal.blue slime_var
scoreboard players reset rgb2decimal.green slime_var
