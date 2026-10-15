#计算本次用时
data modify storage pipes:grid record.timer set value [I;0,0,0]
scoreboard players operation #record_time pipes.var = @s pipes.timer
scoreboard players operation #record_time pipes.var %= #20 pipes.constant
scoreboard players operation #record_time pipes.var *= #5 pipes.constant
scoreboard players operation #record_time_ms pipes.var = #record_time pipes.var
execute store result storage pipes:grid record.timer[0] int 1.0 run scoreboard players get #record_time pipes.var
scoreboard players operation #record_time pipes.var = @s pipes.timer
scoreboard players operation #record_time pipes.var /= #20 pipes.constant
scoreboard players operation #record_time pipes.var %= #60 pipes.constant
execute store result storage pipes:grid record.timer[1] int 1.0 run scoreboard players get #record_time pipes.var
scoreboard players operation #record_time pipes.var = @s pipes.timer
scoreboard players operation #record_time pipes.var /= #20 pipes.constant
scoreboard players operation #record_time pipes.var /= #60 pipes.constant
execute store result storage pipes:grid record.timer[2] int 1.0 run scoreboard players get #record_time pipes.var

#计算本次步骤数
execute store result storage pipes:grid record.steps int 1.0 run scoreboard players get @s pipes.steps

#将这些输入存储
data modify storage pipes:grid record.is_true[1] set value {translate:"dialog.pipes.game.complete"}
data modify storage pipes:grid record.is_true[3].with[0].color set value "gold"
data modify storage pipes:grid record.is_true[3].with[1].color set value "gold"
data modify storage pipes:grid record.is_true[3].with[2].color set value "gold"
data modify storage pipes:grid record.is_true[3].with[3].color set value "gold"
execute if data storage pipes:grid record.is_true[3].with[0].text run data modify storage pipes:grid record.is_true[3].with[0].text set string storage pipes:grid record.timer[2]
execute if data storage pipes:grid record.is_true[3].with[1].text run data modify storage pipes:grid record.is_true[3].with[1].text set string storage pipes:grid record.timer[1]
execute if data storage pipes:grid record.is_true[3].with[2].text run function pipes:record/ms
execute if data storage pipes:grid record.is_true[3].with[3].text run data modify storage pipes:grid record.is_true[3].with[3].text set string storage pipes:grid record.steps

#判断是否破纪录
function pipes:record/get_grid with storage pipes:grid record
execute unless entity @s[tag=pipes.recorded] run data modify storage pipes:grid cache.record.win set compute default integer {inputs:[{path:"cache.record.win",storage:"pipes:grid",type:"storage"},1],type:"minecraft:add"}
execute unless predicate {test:{max:{score:"pipes.timer",target:{target:"this",type:"minecraft:context"},type:"minecraft:score"},min:1},type:"int_value_check",value:{path:"cache.record.timer",storage:"pipes:grid",type:"minecraft:storage"}} run function pipes:record/breaking/timer
execute unless predicate {test:{max:{score:"pipes.steps",target:{target:"this",type:"minecraft:context"},type:"minecraft:score"},min:1},type:"int_value_check",value:{path:"cache.record.steps",storage:"pipes:grid",type:"minecraft:storage"}} run function pipes:record/breaking/steps
data modify storage pipes:grid record.data prepend from storage pipes:grid cache.record
tag @s add pipes.recorded