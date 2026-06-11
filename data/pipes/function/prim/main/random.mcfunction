$execute store result score #random_in_alternative_side pipes.var run random value 1..$(length_of_alternative_side) pipes:prim
execute store result storage pipes:prim macro.random int 1.0 run scoreboard players remove #random_in_alternative_side pipes.var 1
function pipes:prim/main/check_connection_conditions with storage pipes:prim macro