#DFS递归
function pipes:operation/tarjan/dfs/none/dfs with storage pipes:grid DFS[-1].neighbour_tile[0]

#当前节点和邻居节点的low取较小值
execute store result score #current_tile_low pipes.var run data get storage pipes:grid DFS[-1].current_tile.low
function pipes:operation/tarjan/dfs/none/get_neighbour_low with storage pipes:grid DFS[-1].neighbour_tile[0]
scoreboard players operation #current_tile_low pipes.var < #neighbour_tile_low pipes.var
execute store result storage pipes:grid DFS[-1].current_tile.low int 1.0 run scoreboard players get #current_tile_low pipes.var
function pipes:operation/tarjan/dfs/set_current with storage pipes:grid DFS[-1].current_tile

#如果邻居节点的low大于等于当前节点的dfn
execute store result score #current_tile_dfn pipes.var run data get storage pipes:grid DFS[-1].current_tile.dfn
execute if score #neighbour_tile_low pipes.var >= #current_tile_dfn pipes.var run function pipes:operation/tarjan/dfs/neighbour_low