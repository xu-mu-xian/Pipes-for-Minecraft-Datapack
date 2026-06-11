scoreboard players add #warn_tiles_count pipes.var 1
function pipes:operation/tarjan/dfs/none/warn/macro with storage pipes:grid pop_tiles[-1]
data remove storage pipes:grid pop_tiles[-1]
execute if data storage pipes:grid pop_tiles[0] run function pipes:operation/tarjan/dfs/none/warn/