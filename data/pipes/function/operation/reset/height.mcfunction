data modify storage pipes:grid cache.processing_data_cache[-1] append from storage pipes:grid cache.processing_data[0][0]
data modify storage pipes:grid cache.processing_data_cache[-1][-1].state set value 0b
data remove storage pipes:grid cache.processing_data_cache[-1][-1].dfn
data remove storage pipes:grid cache.processing_data_cache[-1][-1].low
data remove storage pipes:grid cache.processing_data_cache[-1][-1].parent
data remove storage pipes:grid cache.processing_data[0][0]
execute if data storage pipes:grid cache.processing_data[0][0] run function pipes:operation/reset/height