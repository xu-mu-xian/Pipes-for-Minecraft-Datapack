#重置计数器
scoreboard players reset #flood_tiles_count pipes.var

#重置状态
function pipes:operation/reset/
data modify storage pipes:grid stack set value []
data modify storage pipes:grid DFS set value []
scoreboard players set #dfn_counter pipes.var 0
scoreboard players set #warn_tiles_count pipes.var 0

#进入深度优先搜索
data modify storage pipes:grid DFS append value {}
data modify storage pipes:grid DFS[-1].current_tile set from storage pipes:grid grid[][{source:true}]
execute store result score #max_x pipes.var run data get storage pipes:grid grid
execute store result score #max_y pipes.var run data get storage pipes:grid grid[0]
scoreboard players remove #max_x pipes.var 1
scoreboard players remove #max_y pipes.var 1
scoreboard players reset #parent_x pipes.var
scoreboard players reset #parent_y pipes.var
function pipes:operation/tarjan/dfs/
data remove storage pipes:grid stack
data remove storage pipes:grid DFS

#判断是否全部灌水
scoreboard players operation #total pipes.var = #width pipes.var
scoreboard players operation #total pipes.var *= #height pipes.var
scoreboard players operation #flood_tiles_count pipes.var = #dfn_counter pipes.var
scoreboard players operation #flood_tiles_count pipes.var -= #warn_tiles_count pipes.var
execute unless score #total pipes.var = #flood_tiles_count pipes.var run return run tag @s remove pipes.win
tag @s add pipes.win