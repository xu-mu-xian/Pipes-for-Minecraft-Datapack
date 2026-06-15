#contents位置：1 text_above  2 grid  3 record  4 text_below
data modify storage pipes:grid dialog.game set value {actions:[{action:{command:"trigger pipes.trigger set 3",type:"minecraft:run_command"},label:{translate:"dialog.pipes.game.new_game"},width:80},{action:{command:"trigger pipes.trigger set 19",type:"minecraft:run_command"},label:{translate:"dialog.pipes.game.lock"},tooltip:{translate:"dialog.pipes.game.lock.tooltip"},width:80},{action:{command:"trigger pipes.trigger set 17",type:"minecraft:run_command"},label:{translate:"dialog.pipes.game.replay"},width:80}],after_action:"none",body:{contents:["","","","",""],type:"minecraft:plain_message",width:500},columns:3,exit_action:{action:{command:"trigger pipes.trigger set 1",type:"minecraft:run_command"},label:{translate:"gui.back"}},pause:false,title:{translate:"dialog.pipes.game.title"},type:"minecraft:multi_action"}
data modify storage pipes:grid settings.record set value true
data modify storage pipes:grid settings.rotation_direction set value "clockwise"
data modify storage pipes:grid settings.trigger set value true
data modify storage pipes:grid style set value {flood:"pipes:tube_flooded",normal:"pipes:tube",source:"pipes:tube_source",warning:"pipes:tube_warning"}
function #pipes:custom_reset
function pipes:record/timer