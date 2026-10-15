$execute unless data storage pipes:grid record.data[{width:$(width),height:$(height)}] run return run data modify storage pipes:grid cache.record set value {width:$(width),height:$(height)}
$data modify storage pipes:grid cache.record set from storage pipes:grid record.data[{width:$(width),height:$(height)}]
$data remove storage pipes:grid record.data[{width:$(width),height:$(height)}]