#获取需要操作的格子
$data modify storage pipes:grid cache.processing_tile set from storage pipes:grid grid[][{index:$(tile_index)}]

#管道锁定
execute if entity @s[tag=pipes.lock] run return run function pipes:operation/trigger/lock/ with storage pipes:grid macro
execute if data storage pipes:grid cache.processing_tile{locked:true} run return run playsound entity.elder_guardian.curse player @s ~ ~ ~ 0.5 2

#未锁定就旋转
execute if data storage pipes:grid settings{rotation_direction:"clockwise"} run function pipes:operation/trigger/clockwise
execute if data storage pipes:grid settings{rotation_direction:"counterclockwise"} run function pipes:operation/trigger/counterclockwise
$data modify storage pipes:grid grid[][{index:$(tile_index)}] set from storage pipes:grid cache.processing_tile