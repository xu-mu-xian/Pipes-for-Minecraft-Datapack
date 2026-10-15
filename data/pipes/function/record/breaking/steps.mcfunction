execute store result storage pipes:grid cache.record.steps int 1.0 run scoreboard players get @s pipes.steps
data modify storage pipes:grid record.is_true[1] set from storage pipes:grid record.new_record
data modify storage pipes:grid record.is_true[3].with[3].color set value "red"