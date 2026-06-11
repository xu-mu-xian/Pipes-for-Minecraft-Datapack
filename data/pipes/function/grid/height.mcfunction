data modify storage pipes:grid grid[-1] append value {side:[B;0b,0b,0b,0b],visited:false}
execute store result storage pipes:grid grid[-1][-1].x int 1.0 run scoreboard players get #x pipes.var
execute store result storage pipes:grid grid[-1][-1].y int 1.0 run scoreboard players get #y pipes.var
scoreboard players operation #tile_index pipes.var = #y pipes.var
scoreboard players operation #tile_index pipes.var *= #width pipes.var
scoreboard players operation #tile_index pipes.var += #x pipes.var
scoreboard players add #tile_index pipes.var 1
execute store result storage pipes:grid grid[-1][-1].index int 1.0 run scoreboard players get #tile_index pipes.var
scoreboard players add #y pipes.var 1
execute if score #y pipes.var < #height pipes.var run function pipes:grid/height