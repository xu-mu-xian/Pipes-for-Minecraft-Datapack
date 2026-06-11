advancement revoke @s only pipes:seed
execute unless function pipes:game/custom/seed/triggered run return fail
function pipes:game/custom/seed/_
scoreboard players reset @s pipes.seed