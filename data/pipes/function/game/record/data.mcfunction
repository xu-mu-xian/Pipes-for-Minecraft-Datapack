execute if data storage pipes:grid record.data[0].win run function pipes:game/record/macro with storage pipes:grid record.data[0]
execute unless data storage pipes:grid record.data[0].win run function pipes:game/record/macro_no_win with storage pipes:grid record.data[0]
data modify storage pipes:grid record.data append from storage pipes:grid record.data[0]
data remove storage pipes:grid record.data[0]
data modify storage pipes:grid dialog.record.body.contents append value "\n\n"
scoreboard players remove #length_of_record_data pipes.var 1
execute if score #length_of_record_data pipes.var matches 1.. run function pipes:game/record/data