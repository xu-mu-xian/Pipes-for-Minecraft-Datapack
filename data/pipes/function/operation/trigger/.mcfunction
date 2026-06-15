advancement revoke @s only pipes:operation

#旋转管道
execute store result storage pipes:grid macro.tile_index int 1.0 run scoreboard players get @s pipes.operation
function pipes:operation/trigger/tile with storage pipes:grid macro
data remove storage pipes:grid cache.display
scoreboard players reset @s pipes.operation
scoreboard players enable @s pipes.operation

#解题判定
function pipes:operation/tarjan/

#显示操作后的图
function pipes:display/

#音效
playsound item.book.page_turn player @s