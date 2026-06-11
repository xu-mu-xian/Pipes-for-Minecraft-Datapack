execute store result score #current_tile_index pipes.var run data get storage pipes:grid DFS[-1].current_tile.index
data modify storage pipes:grid DFS append value {}
$data modify storage pipes:grid DFS[-1].current_tile set from storage pipes:grid grid[$(x)][$(y)]
execute store result storage pipes:grid DFS[-1].current_tile.parent int 1.0 run scoreboard players get #current_tile_index pipes.var
function pipes:operation/tarjan/dfs/
data remove storage pipes:grid DFS[-1]