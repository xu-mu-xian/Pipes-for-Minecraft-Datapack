execute unless data storage pipes:grid cache.processing_tile{locked:true} run return run function pipes:operation/trigger/lock/lock with storage pipes:grid macro
data modify storage pipes:grid cache.processing_tile.locked set value false
$data modify storage pipes:grid grid[][{index:$(tile_index)}] set from storage pipes:grid cache.processing_tile