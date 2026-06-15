$data modify storage pipes:grid cache.upset set from storage pipes:grid grid[$(x)][$(y)]
$scoreboard players set #upset pipes.var $(rotate)
execute if score #upset pipes.var matches 1 run function pipes:upset/1
execute if score #upset pipes.var matches 2 run function pipes:upset/2
execute if score #upset pipes.var matches 3 run function pipes:upset/3
$data modify storage pipes:grid grid[$(x)][$(y)] set from storage pipes:grid cache.upset