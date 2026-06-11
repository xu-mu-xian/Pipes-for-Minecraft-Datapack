data modify storage pipes:grid cache.processing_data_cache append value []
function pipes:operation/reset/height
data remove storage pipes:grid cache.processing_data[0]
execute if data storage pipes:grid cache.processing_data[0] run function pipes:operation/reset/width