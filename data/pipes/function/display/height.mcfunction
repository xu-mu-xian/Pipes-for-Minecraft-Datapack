function pipes:display/width
data modify storage pipes:grid dialog.body.contents[2] append value "\n\n"
data modify storage pipes:grid cache.processing_data set from storage pipes:grid cache.processing_data_cache
data remove storage pipes:grid cache.processing_data_cache
execute if data storage pipes:grid cache.processing_data[0][0] run function pipes:display/height