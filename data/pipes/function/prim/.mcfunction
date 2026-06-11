scoreboard players enable @s pipes.operation

#生成特定大小的方格
function pipes:grid/

#创建候选边列表
data modify storage pipes:prim alternative_side set value []

#确定起始生成的格子
scoreboard players operation #starting_tile_x pipes.var = #width pipes.var
scoreboard players operation #starting_tile_x pipes.var /= #2 pipes.constant
scoreboard players operation #starting_tile_y pipes.var = #height pipes.var
scoreboard players operation #starting_tile_y pipes.var /= #2 pipes.constant
data modify storage pipes:prim cache.current.tile set value [I;0,0]
execute store result storage pipes:prim cache.current.tile[0] int 1.0 run scoreboard players get #starting_tile_x pipes.var
execute store result storage pipes:prim cache.current.tile[1] int 1.0 run scoreboard players get #starting_tile_y pipes.var

#把当前的格子标记为已访问
execute store result storage pipes:prim macro.x int 1.0 run scoreboard players get #starting_tile_x pipes.var
execute store result storage pipes:prim macro.y int 1.0 run scoreboard players get #starting_tile_y pipes.var
function pipes:prim/visit_source with storage pipes:prim macro

#创建起始格子的侯选边
data modify storage pipes:prim cache.current.side set value [B;-1b,0b]
data modify storage pipes:prim alternative_side append from storage pipes:prim cache.current
data modify storage pipes:prim cache.current.side set value [B;0b,-1b]
data modify storage pipes:prim alternative_side append from storage pipes:prim cache.current
data modify storage pipes:prim cache.current.side set value [B;1b,0b]
data modify storage pipes:prim alternative_side append from storage pipes:prim cache.current
data modify storage pipes:prim cache.current.side set value [B;0b,1b]
data modify storage pipes:prim alternative_side append from storage pipes:prim cache.current

#主函数：生成地图
function pipes:prim/main/

#删除候选边列表
data remove storage pipes:prim alternative_side