execute summon item_display run function pipes:game/daily/get_timestamp
data modify storage pipes:grid base64.input.content set string storage pipes:grid base64.input.content 24 40
data modify storage pipes:grid base64.output set value [I;]
function pipes:game/daily/base64_decode/transfer
function pipes:game/daily/base64_decode/transfer
function pipes:game/daily/base64_decode/transfer
function pipes:game/daily/base64_decode/transfer
data modify storage pipes:grid daily.timestamp.total_s set compute default integer {inputs:[{inputs:[{left:{path:"base64.output[0]",storage:"pipes:grid",type:"minecraft:storage"},right:48,type:"minecraft:sub"},1000000000],type:"minecraft:mul"},{inputs:[{left:{path:"base64.output[1]",storage:"pipes:grid",type:"minecraft:storage"},right:48,type:"minecraft:sub"},100000000],type:"minecraft:mul"},{inputs:[{left:{path:"base64.output[2]",storage:"pipes:grid",type:"minecraft:storage"},right:48,type:"minecraft:sub"},10000000],type:"minecraft:mul"},{inputs:[{left:{path:"base64.output[3]",storage:"pipes:grid",type:"minecraft:storage"},right:48,type:"minecraft:sub"},1000000],type:"minecraft:mul"},{inputs:[{left:{path:"base64.output[4]",storage:"pipes:grid",type:"minecraft:storage"},right:48,type:"minecraft:sub"},100000],type:"minecraft:mul"},{inputs:[{left:{path:"base64.output[5]",storage:"pipes:grid",type:"minecraft:storage"},right:48,type:"minecraft:sub"},10000],type:"minecraft:mul"},{inputs:[{left:{path:"base64.output[6]",storage:"pipes:grid",type:"minecraft:storage"},right:48,type:"minecraft:sub"},1000],type:"minecraft:mul"},{inputs:[{left:{path:"base64.output[7]",storage:"pipes:grid",type:"minecraft:storage"},right:48,type:"minecraft:sub"},100],type:"minecraft:mul"},{inputs:[{left:{path:"base64.output[8]",storage:"pipes:grid",type:"minecraft:storage"},right:48,type:"minecraft:sub"},10],type:"minecraft:mul"},{left:{path:"base64.output[9]",storage:"pipes:grid",type:"minecraft:storage"},right:48,type:"minecraft:sub"}],type:"minecraft:add"}
data modify storage pipes:grid daily.timestamp.total_day set compute default integer {left:{path:"daily.timestamp.total_s",storage:"pipes:grid",type:"minecraft:storage"},right:86400,type:"minecraft:div"}
scoreboard players set #width pipes.var 30
scoreboard players set #height pipes.var 30
data modify storage pipes:grid generate.width set value 30
data modify storage pipes:grid generate.height set value 30
data modify storage pipes:grid generate.seed set from storage pipes:grid daily.timestamp.total_day
function pipes:game/new_game/macro with storage pipes:grid generate