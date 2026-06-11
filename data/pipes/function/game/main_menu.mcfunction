dialog show @s {\
  actions:[\
    {action:{command:"trigger pipes.trigger set 4",type:"minecraft:run_command"},label:"4 x 4",width:60},\
    {action:{command:"trigger pipes.trigger set 5",type:"minecraft:run_command"},label:"5 x 5",width:60},\
    {action:{command:"trigger pipes.trigger set 6",type:"minecraft:run_command"},label:"6 x 6",width:60},\
    {action:{command:"trigger pipes.trigger set 7",type:"minecraft:run_command"},label:"7 x 7",width:60},\
    {action:{command:"trigger pipes.trigger set 8",type:"minecraft:run_command"},label:"8 x 8",width:60},\
    {action:{command:"trigger pipes.trigger set 9",type:"minecraft:run_command"},label:"9 x 9",width:60},\
    {action:{command:"trigger pipes.trigger set 10",type:"minecraft:run_command"},label:"10 x 10",width:60},\
    {action:{command:"trigger pipes.trigger set 11",type:"minecraft:run_command"},label:"11 x 11",width:60},\
    {action:{command:"trigger pipes.trigger set 12",type:"minecraft:run_command"},label:"12 x 12",width:60},\
    {action:{command:"trigger pipes.trigger set 13",type:"minecraft:run_command"},label:"13 x 13",width:60},\
    {action:{command:"trigger pipes.trigger set 14",type:"minecraft:run_command"},label:"14 x 14",width:60},\
    {action:{command:"trigger pipes.trigger set 15",type:"minecraft:run_command"},label:"15 x 15",width:60},\
    {action:{command:"trigger pipes.trigger set 16",type:"minecraft:run_command"},label:"16 x 16",width:60},\
    {action:{command:"trigger pipes.trigger set 18",type:"minecraft:run_command"},label:{translate:"dialog.pipes.main.custom"},width:60},\
    {action:{command:"trigger pipes.trigger set 2",type:"minecraft:run_command"},label:{translate:"dialog.pipes.main.resume"},width:60},\
    {\
      action:{\
        dialog:{\
          actions:[\
            {action:{template:"trigger pipes.trigger set 9999$(record)",type:"minecraft:dynamic/run_command"},label:{translate:"gui.ok"},width:60},\
            {action:{command:"trigger pipes.trigger set 1",type:"minecraft:run_command"},label:{translate:"gui.back"},width:60}\
          ],\
          after_action:"none",\
          inputs:[{initial:false,key:"record",label:{translate:"dialog.pipes.settings.record"},on_false:"0",on_true:"1",type:"minecraft:boolean"}],\
          pause:false,\
          title:"",\
          type:"minecraft:multi_action"\
        },\
        type:"show_dialog"\
      },\
      label:{\
        translate:"dialog.pipes.main.settings"\
      },\
    width:60}\
  ],\
  body:{\
    contents:[\
      "",{font:"pipes:tube_warning",text:"i"},{font:"pipes:tube_space",text:"%"},{font:"pipes:tube_warning",text:"j"},{font:"pipes:tube_source",text:"d"},{font:"pipes:tube_warning",text:"i"},{font:"pipes:tube_space",text:"%"},{font:"pipes:tube_warning",text:"j"},{font:"pipes:tube",text:"i"},{font:"pipes:tube_space",text:"%"},{font:"pipes:tube",text:"a"},{font:"pipes:tube_flooded",text:"i"},{font:"pipes:tube_space",text:"%"},{font:"pipes:tube_flooded",text:"a"},"\n\n",{font:"pipes:tube_warning",text:"m"},{font:"pipes:tube_space",text:"%"},{font:"pipes:tube_warning",text:"g"},{font:"pipes:tube_flooded",text:"f"},{font:"pipes:tube_warning",text:"m"},{font:"pipes:tube_space",text:"%"},{font:"pipes:tube_warning",text:"g"},{font:"pipes:tube",text:"m"},{font:"pipes:tube_space",text:"%"},{font:"pipes:tube",text:"a"},{font:"pipes:tube_flooded",text:"h"},{font:"pipes:tube_space",text:"%"},{font:"pipes:tube_flooded",text:"j"},"\n\n",{font:"pipes:tube_flooded",text:"b"},{font:"pipes:tube_space",text:"%"},{font:"pipes:tube",text:"o"},{font:"pipes:tube_flooded",text:"b"},{font:"pipes:tube_flooded",text:"b"},{font:"pipes:tube_space",text:"%"},{font:"pipes:tube",text:"o"},{font:"pipes:tube",text:"h"},{font:"pipes:tube_space",text:"%"},{font:"pipes:tube",text:"a"},{font:"pipes:tube_flooded",text:"c"},{font:"pipes:tube_space",text:"%"},{font:"pipes:tube_flooded",text:"g"},"\n\n\n\n","v 1.0",\
    ],\
    type:"minecraft:plain_message"\
  },\
  after_action:"none",\
  columns:3,\
  pause:false,\
  title:"",\
  type:"minecraft:multi_action"\
}
scoreboard players reset @s pipes.seed
tag @s add pipes.quit