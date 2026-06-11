scoreboard players enable @s pipes.trigger
data modify storage pipes:grid dialog.body.contents[3] set value {translate:"dialog.pipes.game.complete"}
execute unless data storage pipes:grid settings{record:true} run return run function pipes:display/show with storage pipes:grid
data modify storage pipes:grid dialog.body.contents[3] set value [{translate:"dialog.pipes.game.complete"},"  ",{translate:"dialog.pipes.game.time"},{color:"gold",text:""}," min ",{color:"gold",text:""},{color:"gold",text:"."},{color:"gold",text:""}," s"]
data modify storage pipes:grid record set value [I;0,0,0]
scoreboard players operation #record_time pipes.var = @s pipes.timer
scoreboard players operation #record_time pipes.var %= #20 pipes.constant
scoreboard players operation #record_time pipes.var *= #5 pipes.constant
execute store result storage pipes:grid record[0] int 1.0 run scoreboard players get #record_time pipes.var
scoreboard players operation #record_time pipes.var = @s pipes.timer
scoreboard players operation #record_time pipes.var /= #20 pipes.constant
scoreboard players operation #record_time pipes.var %= #60 pipes.constant
execute store result storage pipes:grid record[1] int 1.0 run scoreboard players get #record_time pipes.var
scoreboard players operation #record_time pipes.var = @s pipes.timer
scoreboard players operation #record_time pipes.var /= #20 pipes.constant
scoreboard players operation #record_time pipes.var /= #60 pipes.constant
execute store result storage pipes:grid record[2] int 1.0 run scoreboard players get #record_time pipes.var
data modify storage pipes:grid dialog.body.contents[3][3].text set string storage pipes:grid record[2]
data modify storage pipes:grid dialog.body.contents[3][5].text set string storage pipes:grid record[1]
data modify storage pipes:grid dialog.body.contents[3][7].text set string storage pipes:grid record[0]
scoreboard players reset @s pipes.timer
function pipes:display/show with storage pipes:grid