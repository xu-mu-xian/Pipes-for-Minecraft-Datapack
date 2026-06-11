execute store result storage pipes:grid generate.width int 1.0 run scoreboard players get #width pipes.var
execute store result storage pipes:grid generate.height int 1.0 run scoreboard players get #height pipes.var
execute store result storage pipes:grid generate.seed int 1.0 run scoreboard players get @s pipes.seed
function pipes:game/new_game/macro with storage pipes:grid generate