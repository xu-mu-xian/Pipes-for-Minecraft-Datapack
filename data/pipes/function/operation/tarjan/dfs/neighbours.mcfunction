function pipes:operation/tarjan/dfs/check_neighbours
data remove storage pipes:grid DFS[-1].neighbour_tile[0]
execute if data storage pipes:grid DFS[-1].neighbour_tile[0] run function pipes:operation/tarjan/dfs/neighbours