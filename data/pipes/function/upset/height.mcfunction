data modify storage pipes:grid cache.upset set from storage pipes:grid cache.processing_data[0][0]
function pipes:upset/random
data modify storage pipes:grid cache.processing_data_cache[-1] append from storage pipes:grid cache.upset
data remove storage pipes:grid cache.processing_data[0][0]
execute if data storage pipes:grid cache.processing_data[0][0] run function pipes:upset/height