execute store result storage pipes:grid DFS[-1].current_tile.low int 1.0 store result storage pipes:grid DFS[-1].current_tile.dfn int 1.0 run scoreboard players add #dfn_counter pipes.var 1
data modify storage pipes:grid DFS[-1].current_tile.state set value 1b
function pipes:operation/tarjan/dfs/set_current with storage pipes:grid DFS[-1].current_tile
data modify storage pipes:grid stack append from storage pipes:grid DFS[-1].current_tile

#检查邻居
function pipes:operation/tarjan/dfs/neighbour/
execute if data storage pipes:grid DFS[-1].neighbour_tile[0] run function pipes:operation/tarjan/dfs/neighbours