scoreboard players operation @s pipes.var *= #-1 pipes.constant
scoreboard players reset #custom_digit pipes.var
scoreboard players operation #custom pipes.var = @s pipes.var
scoreboard players operation #custom_digit pipes.var = #custom pipes.var
scoreboard players operation #custom_digit pipes.var /= #100 pipes.constant
execute if score #custom_digit pipes.var matches 0 run return run function pipes:game/custom/seed/2_digit
scoreboard players operation #custom_digit pipes.var = #custom pipes.var
scoreboard players operation #custom_digit pipes.var /= #1000 pipes.constant
execute unless score #custom_digit pipes.var matches 0 run return run function pipes:game/custom/seed/4_digit
scoreboard players operation #custom_digit pipes.var = #custom pipes.var
scoreboard players operation #custom_digit pipes.var /= #100 pipes.constant
execute if score #custom_digit pipes.var matches 3..9 run function pipes:game/custom/seed/1_plus_2
scoreboard players operation #custom_digit pipes.var = #custom pipes.var
scoreboard players operation #custom_digit pipes.var /= #10 pipes.constant
execute if score #custom_digit pipes.var matches ..30 run function pipes:game/custom/seed/2_plus_1
function pipes:game/custom/seed/generate