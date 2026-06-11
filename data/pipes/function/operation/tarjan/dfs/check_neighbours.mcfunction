execute store result score #parent_tile_index pipes.var run data get storage pipes:grid DFS[-1].current_tile.parent
function pipes:operation/tarjan/dfs/get_neighbour with storage pipes:grid DFS[-1].neighbour_tile[0]
execute store result score #neighbour_tile_index pipes.var run data get storage pipes:grid DFS[-1].neighbour_tile[0].index

#邻居节点是否不是当前节点的父节点
execute if score #parent_tile_index pipes.var = #neighbour_tile_index pipes.var run return fail

#判断邻居节点的状态
#无
execute store result score #neighbour_tile_state pipes.var run data get storage pipes:grid DFS[-1].neighbour_tile[0].state
execute if score #neighbour_tile_state pipes.var matches 0 run function pipes:operation/tarjan/dfs/none/

#灌水
execute store result score #neighbour_tile_state pipes.var run data get storage pipes:grid DFS[-1].neighbour_tile[0].state
execute if score #neighbour_tile_state pipes.var matches 1 run function pipes:operation/tarjan/dfs/flood