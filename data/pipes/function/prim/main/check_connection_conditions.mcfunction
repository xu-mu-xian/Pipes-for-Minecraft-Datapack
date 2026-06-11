$data modify storage pipes:prim cache.current set from storage pipes:prim alternative_side[$(random)]
execute store result score #current_x pipes.var run data get storage pipes:prim cache.current.tile[0]
execute store result score #current_y pipes.var run data get storage pipes:prim cache.current.tile[1]
execute store result score #neighbour_x pipes.var run data get storage pipes:prim cache.current.side[0]
execute store result score #neighbour_y pipes.var run data get storage pipes:prim cache.current.side[1]
scoreboard players operation #neighbour_x pipes.var += #current_x pipes.var
scoreboard players operation #neighbour_y pipes.var += #current_y pipes.var
execute store result storage pipes:prim macro.x int 1.0 run scoreboard players get #current_x pipes.var
execute store result storage pipes:prim macro.y int 1.0 run scoreboard players get #current_y pipes.var
execute store result storage pipes:prim macro.neighbour_x int 1.0 run scoreboard players get #neighbour_x pipes.var
execute store result storage pipes:prim macro.neighbour_y int 1.0 run scoreboard players get #neighbour_y pipes.var
function pipes:prim/main/get_current_and_neighbour with storage pipes:prim macro

#检查邻居节点是否未访问
execute if data storage pipes:prim cache.tile_check.neighbour{visited:true} run return fail

#检查本节点是否已是T形管
execute if data storage pipes:prim cache.tile_check.current{side:[B;1b,1b,1b,0b]} run return fail
execute if data storage pipes:prim cache.tile_check.current{side:[B;1b,1b,0b,1b]} run return fail
execute if data storage pipes:prim cache.tile_check.current{side:[B;1b,0b,1b,1b]} run return fail
execute if data storage pipes:prim cache.tile_check.current{side:[B;0b,1b,1b,1b]} run return fail

#如果上面的检查都通过了，就进行下面的内容
#连接邻居节点和当前节点
execute if data storage pipes:prim cache.current{side:[B;-1b,0b]} run function pipes:prim/main/connect/left with storage pipes:prim macro
execute if data storage pipes:prim cache.current{side:[B;0b,-1b]} run function pipes:prim/main/connect/up with storage pipes:prim macro
execute if data storage pipes:prim cache.current{side:[B;1b,0b]} run function pipes:prim/main/connect/right with storage pipes:prim macro
execute if data storage pipes:prim cache.current{side:[B;0b,1b]} run function pipes:prim/main/connect/down with storage pipes:prim macro

#将邻居节点标记为已访问
function pipes:prim/visit_neighbour with storage pipes:prim macro

#将邻居节点纳入候选边列表
scoreboard players operation #left_tile pipes.var = #neighbour_x pipes.var
scoreboard players remove #left_tile pipes.var 1
execute store result storage pipes:prim macro.left int 1.0 run scoreboard players get #left_tile pipes.var
scoreboard players operation #up_tile pipes.var = #neighbour_y pipes.var
scoreboard players remove #up_tile pipes.var 1
execute store result storage pipes:prim macro.up int 1.0 run scoreboard players get #up_tile pipes.var
scoreboard players operation #right_tile pipes.var = #neighbour_x pipes.var
scoreboard players add #right_tile pipes.var 1
execute store result storage pipes:prim macro.right int 1.0 run scoreboard players get #right_tile pipes.var
scoreboard players operation #down_tile pipes.var = #neighbour_y pipes.var
scoreboard players add #down_tile pipes.var 1
execute store result storage pipes:prim macro.down int 1.0 run scoreboard players get #down_tile pipes.var
function pipes:prim/main/neighbour_alternative_tiles with storage pipes:prim macro