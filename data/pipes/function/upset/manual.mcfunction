$data modify storage pipes:grid cache.upset set from storage pipes:grid grid[$(x)][$(y)]
function pipes:upset/random
$data modify storage pipes:grid grid[$(x)][$(y)] set from storage pipes:grid cache.upset