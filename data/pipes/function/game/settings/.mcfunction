data modify storage pipes:grid dialog.settings set value \
{\
  actions:[\
    {action:{template:"trigger pipes.trigger set 999$(record)$(rotation_direction)",type:"minecraft:dynamic/run_command"},label:{translate:"gui.ok"},width:120},\
    {action:{command:"trigger pipes.trigger set 1",type:"minecraft:run_command"},label:{translate:"gui.back"},width:120}\
  ],\
  after_action:"none",\
  inputs:[\
    {initial:false,key:"record",label:{translate:"dialog.pipes.settings.record"},on_false:"0",on_true:"1",type:"minecraft:boolean"},\
    {key:"rotation_direction",label:{translate:"dialog.pipes.settings.rotation_direction"},options:[\
      {display:{translate:"dialog.pipes.settings.rotation_direction.clockwise"},id:"0"},\
      {display:{translate:"dialog.pipes.settings.rotation_direction.counterclockwise"},id:"1"}\
    ],width:250,type:"minecraft:single_option"}\
  ],\
  pause:false,\
  title:"",\
  type:"minecraft:multi_action"\
}
data modify storage pipes:grid dialog.settings.inputs[0].initial set from storage pipes:grid settings.record
execute if data storage pipes:grid settings{rotation_direction:"counterclockwise"} run data modify storage pipes:grid dialog.settings.inputs[1].options[1].initial set value true
function pipes:game/settings/menu with storage pipes:grid dialog