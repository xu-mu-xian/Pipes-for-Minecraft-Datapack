execute store result score #upset pipes.var run random value 1..4 pipes:prim
execute if score #upset pipes.var matches 1 run return run function pipes:upset/1
execute if score #upset pipes.var matches 2 run return run function pipes:upset/2
execute if score #upset pipes.var matches 3 run function pipes:upset/3