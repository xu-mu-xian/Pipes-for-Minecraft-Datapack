data modify storage pipes:grid cache.processing_tile set from storage pipes:grid cache.processing_data[0][0]
function pipes:display/shapes
data modify storage pipes:grid macro.tile_index set from storage pipes:grid cache.processing_data[0][0].index
function pipes:display/trigger with storage pipes:grid macro
data modify storage pipes:grid dialog.body.contents[2] append from storage pipes:grid cache.display
execute if data storage pipes:grid cache.processing_tile{state:1b} run data modify storage pipes:grid dialog.body.contents[2][-1].font set value "pipes:tube_flooded"
execute if data storage pipes:grid cache.processing_tile{state:2b} run data modify storage pipes:grid dialog.body.contents[2][-1].font set value "pipes:tube_warning"
execute if data storage pipes:grid cache.processing_tile.source run data modify storage pipes:grid dialog.body.contents[2][-1].font set value "pipes:tube_source"
data remove storage pipes:grid cache.processing_data[0][0]
data modify storage pipes:grid cache.processing_data_cache append from storage pipes:grid cache.processing_data[0]
data remove storage pipes:grid cache.processing_data[0]
execute if data storage pipes:grid cache.processing_data[0] run data modify storage pipes:grid dialog.body.contents[2] append value {font:"pipes:tube_space",text:"%"}
execute if data storage pipes:grid cache.processing_data[0] run function pipes:display/width