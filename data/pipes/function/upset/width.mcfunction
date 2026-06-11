data modify storage pipes:grid cache.processing_data_cache append value []
function pipes:upset/height
data remove storage pipes:grid cache.processing_data[0]
execute if data storage pipes:grid cache.processing_data[0] run function pipes:upset/width