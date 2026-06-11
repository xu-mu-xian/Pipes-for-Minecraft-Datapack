data modify storage pipes:grid pop_tiles append from storage pipes:grid stack[-1]
data remove storage pipes:grid stack[-1]
execute store result score #pop_tile_index pipes.var run data get storage pipes:grid pop_tiles[-1].index
execute store result score #neighbour_tile_index pipes.var run data get storage pipes:grid DFS[-1].neighbour_tile[0].index
execute unless score #pop_tile_index pipes.var = #neighbour_tile_index pipes.var run function pipes:operation/tarjan/dfs/none/pop_tiles