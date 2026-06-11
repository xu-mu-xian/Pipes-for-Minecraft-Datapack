$random reset pipes:prim $(seed)
$scoreboard players set #width pipes.var $(w)
$scoreboard players set #height pipes.var $(h)
tag @s remove pipes.win
function pipes:generate/process