data modify storage pipes:grid custom_menu set value \
{\
  actions:[\
    {action:{template:"trigger pipes.trigger set $(width)$(height)",type:"minecraft:dynamic/run_command"},label:{translate:"dialog.pipes.custom.start_directly"},width:100},\
    {action:{template:"trigger pipes.trigger set -$(width)$(height)",type:"minecraft:dynamic/run_command"},label:{translate:"dialog.pipes.custom.start_with_seed"},tooltip:{translate:"dialog.pipes.custom.start_with_seed.tooltip"},width:100},\
    {action:{command:"trigger pipes.trigger set 1",type:"minecraft:run_command"},label:{translate:"gui.back"},width:100}\
  ],\
  after_action:"none",\
  body:{contents:{translate:"dialog.pipes.custom.warn"},type:"minecraft:plain_message",width:250},\
  inputs:[\
    {end:27,initial:5,key:"width",label:{translate:"dialog.pipes.custom.width"},start:3,step:1,type:"minecraft:number_range",width:200},\
    {end:27,initial:5,key:"height",label:{translate:"dialog.pipes.custom.height"},start:3,step:1,type:"minecraft:number_range",width:200}\
  ],\
  pause:false,\
  title:{translate:"dialog.pipes.main.custom"},\
  type:"minecraft:multi_action"\
}
execute if data storage pipes:grid generate.width run data modify storage pipes:grid custom_menu.inputs[0].initial set from storage pipes:grid generate.width
execute if data storage pipes:grid generate.height run data modify storage pipes:grid custom_menu.inputs[1].initial set from storage pipes:grid generate.height
function pipes:game/custom/menu with storage pipes:grid
scoreboard players reset @s pipes.seed