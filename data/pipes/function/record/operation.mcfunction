data modify storage pipes:grid record.timer set value [I;0,0,0]
scoreboard players operation #record_time pipes.var = @s pipes.timer
scoreboard players operation #record_time pipes.var %= #20 pipes.constant
scoreboard players operation #record_time pipes.var *= #5 pipes.constant
execute store result storage pipes:grid record.timer[0] int 1.0 run scoreboard players get #record_time pipes.var
scoreboard players operation #record_time pipes.var = @s pipes.timer
scoreboard players operation #record_time pipes.var /= #20 pipes.constant
scoreboard players operation #record_time pipes.var %= #60 pipes.constant
execute store result storage pipes:grid record.timer[1] int 1.0 run scoreboard players get #record_time pipes.var
scoreboard players operation #record_time pipes.var = @s pipes.timer
scoreboard players operation #record_time pipes.var /= #20 pipes.constant
scoreboard players operation #record_time pipes.var /= #60 pipes.constant
execute store result storage pipes:grid record.timer[2] int 1.0 run scoreboard players get #record_time pipes.var
execute if data storage pipes:grid record.is_true.with[0].text run data modify storage pipes:grid record.is_true.with[0].text set string storage pipes:grid record.timer[2]
execute if data storage pipes:grid record.is_true.with[1].text run data modify storage pipes:grid record.is_true.with[1].text set string storage pipes:grid record.timer[1]
execute if data storage pipes:grid record.is_true.with[2].text run data modify storage pipes:grid record.is_true.with[2].text set string storage pipes:grid record.timer[0]