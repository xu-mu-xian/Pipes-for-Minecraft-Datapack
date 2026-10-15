execute if score #record_time_ms pipes.var matches 0 run return run data modify storage pipes:grid record.is_true[3].with[2].text set value "00"
execute if score #record_time_ms pipes.var matches 5 run return run data modify storage pipes:grid record.is_true[3].with[2].text set value "05"
data modify storage pipes:grid record.is_true[3].with[2].text set string storage pipes:grid record.timer[0]