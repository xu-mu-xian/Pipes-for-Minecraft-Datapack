$random reset pipes:prim $(seed)
execute store result score #width pipes.var run data get storage pipes:grid generate.width
execute store result score #height pipes.var run data get storage pipes:grid generate.height
function pipes:generate/process