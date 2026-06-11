$data modify storage pipes:grid cache.processing_tile set from storage pipes:grid grid[][{index:$(tile_index)}]
data modify storage pipes:grid cache.processing_tile.side prepend from storage pipes:grid cache.processing_tile.side[-1]
data remove storage pipes:grid cache.processing_tile.side[-1]
$data modify storage pipes:grid grid[][{index:$(tile_index)}] set from storage pipes:grid cache.processing_tile
data remove storage pipes:grid cache.display