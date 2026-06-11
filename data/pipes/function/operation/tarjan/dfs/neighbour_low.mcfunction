data modify storage pipes:grid pop_tiles set value []
function pipes:operation/tarjan/dfs/none/pop_tiles
data modify storage pipes:grid pop_tiles append from storage pipes:grid DFS[-1].current_tile
scoreboard players reset #length_of_pop_tiles pipes.var
execute store result score #length_of_pop_tiles pipes.var run data get storage pipes:grid pop_tiles
execute if score #length_of_pop_tiles pipes.var matches 3.. run function pipes:operation/tarjan/dfs/none/warn/