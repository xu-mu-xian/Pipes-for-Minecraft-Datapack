data modify storage pipes:prim cache.neighbour.tile set value [I;0,0]
data modify storage pipes:prim cache.neighbour.tile[0] set from storage pipes:prim macro.neighbour_x
data modify storage pipes:prim cache.neighbour.tile[1] set from storage pipes:prim macro.neighbour_y
#左
$execute store result score #visited pipes.var run data get storage pipes:grid grid[$(left)][$(neighbour_y)].visited
execute unless score #left_tile pipes.var matches ..-1 unless score #visited pipes.var matches 1 run function pipes:prim/main/neighbour/left
scoreboard players reset #visited pipes.var
#上
$execute store result score #visited pipes.var run data get storage pipes:grid grid[$(neighbour_x)][$(up)].visited
execute unless score #up_tile pipes.var matches ..-1 unless score #visited pipes.var matches 1 run function pipes:prim/main/neighbour/up
scoreboard players reset #visited pipes.var
#右
$execute store result score #visited pipes.var run data get storage pipes:grid grid[$(right)][$(neighbour_y)].visited
execute unless score #right_tile pipes.var >= #width pipes.var unless score #visited pipes.var matches 1 run function pipes:prim/main/neighbour/right
scoreboard players reset #visited pipes.var
#下
$execute store result score #visited pipes.var run data get storage pipes:grid grid[$(neighbour_x)][$(down)].visited
execute unless score #down_tile pipes.var >= #height pipes.var unless score #visited pipes.var matches 1 run function pipes:prim/main/neighbour/down
scoreboard players reset #visited pipes.var