data modify storage pipes:grid cache.processing_tile.locked set value true
$data modify storage pipes:grid grid[][{index:$(tile_index)}] set from storage pipes:grid cache.processing_tile