execute store result storage pipes:grid cache.record.timer int 1.0 run scoreboard players get @s pipes.timer
data modify storage pipes:grid cache.record.timer_min set from storage pipes:grid record.timer[2]
data modify storage pipes:grid cache.record.timer_s set from storage pipes:grid record.timer[1]
data modify storage pipes:grid cache.record.timer_ms set from storage pipes:grid record.timer[0]
data modify storage pipes:grid record.is_true[1] set from storage pipes:grid record.new_record
data modify storage pipes:grid record.is_true[3].with[0].color set value "red"
data modify storage pipes:grid record.is_true[3].with[1].color set value "red"
data modify storage pipes:grid record.is_true[3].with[2].color set value "red"