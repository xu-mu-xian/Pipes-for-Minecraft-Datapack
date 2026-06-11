execute store result score #current_x pipes.var run data get storage pipes:grid DFS[-1].current_tile.x
execute store result score #current_y pipes.var run data get storage pipes:grid DFS[-1].current_tile.y

#左侧邻居
scoreboard players operation #neighbour_x pipes.var = #current_x pipes.var
scoreboard players remove #neighbour_x pipes.var 1
execute store result storage pipes:grid macro.neighbour_x int 1.0 run scoreboard players get #neighbour_x pipes.var
execute store result storage pipes:grid macro.neighbour_y int 1.0 run scoreboard players get #current_y pipes.var
execute if score #neighbour_x pipes.var matches 0.. run function pipes:operation/tarjan/dfs/neighbour/left with storage pipes:grid macro

#上侧邻居
scoreboard players operation #neighbour_y pipes.var = #current_y pipes.var
scoreboard players remove #neighbour_y pipes.var 1
execute store result storage pipes:grid macro.neighbour_x int 1.0 run scoreboard players get #current_x pipes.var
execute store result storage pipes:grid macro.neighbour_y int 1.0 run scoreboard players get #neighbour_y pipes.var
execute if score #neighbour_y pipes.var matches 0.. run function pipes:operation/tarjan/dfs/neighbour/up with storage pipes:grid macro

#右侧邻居
scoreboard players operation #neighbour_x pipes.var = #current_x pipes.var
scoreboard players add #neighbour_x pipes.var 1
execute store result storage pipes:grid macro.neighbour_x int 1.0 run scoreboard players get #neighbour_x pipes.var
execute store result storage pipes:grid macro.neighbour_y int 1.0 run scoreboard players get #current_y pipes.var
execute if score #neighbour_x pipes.var <= #max_x pipes.var run function pipes:operation/tarjan/dfs/neighbour/right with storage pipes:grid macro

#下侧邻居
scoreboard players operation #neighbour_y pipes.var = #current_y pipes.var
scoreboard players add #neighbour_y pipes.var 1
execute store result storage pipes:grid macro.neighbour_x int 1.0 run scoreboard players get #current_x pipes.var
execute store result storage pipes:grid macro.neighbour_y int 1.0 run scoreboard players get #neighbour_y pipes.var
execute if score #neighbour_y pipes.var <= #max_y pipes.var run function pipes:operation/tarjan/dfs/neighbour/down with storage pipes:grid macro