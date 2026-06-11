execute store result score #connect pipes.var run data get storage pipes:grid DFS[-1].current_tile.side[1]
execute unless score #connect pipes.var matches 1 run return fail
$execute store result score #connect pipes.var run data get storage pipes:grid grid[$(neighbour_x)][$(neighbour_y)].side[3]
execute unless score #connect pipes.var matches 1 run return fail

$data modify storage pipes:grid DFS[-1].neighbour_tile append from storage pipes:grid grid[$(neighbour_x)][$(neighbour_y)]