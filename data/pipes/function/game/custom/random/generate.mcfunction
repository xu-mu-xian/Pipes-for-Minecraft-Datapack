execute store result storage pipes:grid generate.width int 1.0 run scoreboard players get #width pipes.var
execute store result storage pipes:grid generate.height int 1.0 run scoreboard players get #height pipes.var
execute store result score #random_seed_interval pipes.var run random value 1..4
execute if score #random_seed_interval pipes.var matches 1 store result storage pipes:grid generate.seed int 1.0 run random value -2147483648..-1073741825
execute if score #random_seed_interval pipes.var matches 2 store result storage pipes:grid generate.seed int 1.0 run random value -1073741824..-1
execute if score #random_seed_interval pipes.var matches 3 store result storage pipes:grid generate.seed int 1.0 run random value 0..1073741823
execute if score #random_seed_interval pipes.var matches 4 store result storage pipes:grid generate.seed int 1.0 run random value 1073741824..2147483647
function pipes:game/new_game/macro with storage pipes:grid generate