scoreboard players set #base64_group pipes.var 0

#读取第一位
data modify storage pipes:grid base64.input.char set string storage pipes:grid base64.input.content 0 1
data modify storage pipes:grid base64.input.content set string storage pipes:grid base64.input.content 1
execute store result score #base64_char1 pipes.var run function pipes:game/daily/base64_decode/get_char with storage pipes:grid base64.input

#读取第二位
data modify storage pipes:grid base64.input.char set string storage pipes:grid base64.input.content 0 1
data modify storage pipes:grid base64.input.content set string storage pipes:grid base64.input.content 1
execute store result score #base64_char2 pipes.var run function pipes:game/daily/base64_decode/get_char with storage pipes:grid base64.input

#读取第三位
data modify storage pipes:grid base64.input.char set string storage pipes:grid base64.input.content 0 1
data modify storage pipes:grid base64.input.content set string storage pipes:grid base64.input.content 1
execute store result score #base64_char3 pipes.var run function pipes:game/daily/base64_decode/get_char with storage pipes:grid base64.input

#读取第四位
data modify storage pipes:grid base64.input.char set string storage pipes:grid base64.input.content 0 1
data modify storage pipes:grid base64.input.content set string storage pipes:grid base64.input.content 1
execute store result score #base64_char4 pipes.var run function pipes:game/daily/base64_decode/get_char with storage pipes:grid base64.input

#编码
execute store result score #base64_group pipes.var run compute default integer {inputs:[{inputs:[262144,{score:"pipes.var",target:{name:"#base64_char1",type:"minecraft:fixed"},type:"minecraft:score"}],type:"minecraft:mul"},{inputs:[4096,{score:"pipes.var",target:{name:"#base64_char2",type:"minecraft:fixed"},type:"minecraft:score"}],type:"minecraft:mul"},{inputs:[64,{score:"pipes.var",target:{name:"#base64_char3",type:"minecraft:fixed"},type:"minecraft:score"}],type:"minecraft:mul"},{score:"pipes.var",target:{name:"#base64_char4",type:"minecraft:fixed"},type:"minecraft:score"}],type:"minecraft:add"}

#解码第一位
data modify storage pipes:grid base64.output append compute default integer {left:{score:"pipes.var",target:{name:"#base64_group",type:"minecraft:fixed"},type:"minecraft:score"},right:65536,type:"minecraft:div"}

#解码第二位
data modify storage pipes:grid base64.output append compute default integer {left:{left:{score:"pipes.var",target:{name:"#base64_group",type:"minecraft:fixed"},type:"minecraft:score"},right:65536,type:"minecraft:mod"},right:256,type:"minecraft:div"}

#解码第三位
data modify storage pipes:grid base64.output append compute default integer {left:{score:"pipes.var",target:{name:"#base64_group",type:"minecraft:fixed"},type:"minecraft:score"},right:256,type:"minecraft:mod"}