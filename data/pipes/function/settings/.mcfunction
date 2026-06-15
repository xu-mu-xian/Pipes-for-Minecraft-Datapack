scoreboard players operation #settings_rotation_direction pipes.var = @s pipes.trigger
scoreboard players operation #settings_rotation_direction pipes.var %= #10 pipes.constant
execute if score #settings_rotation_direction pipes.var matches 0 run function pipes:settings/rotation_direction/clockwise
execute if score #settings_rotation_direction pipes.var matches 1 run function pipes:settings/rotation_direction/counterclockwise

scoreboard players operation #settings_record pipes.var = @s pipes.trigger
scoreboard players operation #settings_record pipes.var /= #10 pipes.constant
scoreboard players operation #settings_record pipes.var %= #10 pipes.constant
execute if score #settings_record pipes.var matches 0 run function pipes:settings/record/false
execute if score #settings_record pipes.var matches 1 run function pipes:settings/record/true