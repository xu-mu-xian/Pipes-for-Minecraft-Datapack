scoreboard players set #y pipes.var 0
data modify storage pipes:grid grid append value []
function pipes:grid/height
scoreboard players add #x pipes.var 1
execute if score #x pipes.var < #width pipes.var run function pipes:grid/width