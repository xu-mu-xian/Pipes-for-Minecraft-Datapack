function pipes:record/get_grid with storage pipes:grid record
data modify storage pipes:grid cache.record.total set compute default integer {inputs:[{path:"cache.record.total",storage:"pipes:grid",type:"storage"},1],type:"minecraft:add"}
data modify storage pipes:grid record.data prepend from storage pipes:grid cache.record