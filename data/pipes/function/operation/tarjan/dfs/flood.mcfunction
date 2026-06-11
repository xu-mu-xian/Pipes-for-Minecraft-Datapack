execute store result score #current_tile_low pipes.var run data get storage pipes:grid DFS[-1].current_tile.low
execute store result score #neighbour_tile_dfn pipes.var run data get storage pipes:grid DFS[-1].neighbour_tile[0].dfn
scoreboard players operation #current_tile_low pipes.var < #neighbour_tile_dfn pipes.var
execute store result storage pipes:grid DFS[-1].current_tile.low int 1.0 run scoreboard players get #current_tile_low pipes.var
function pipes:operation/tarjan/dfs/set_current with storage pipes:grid DFS[-1].current_tile