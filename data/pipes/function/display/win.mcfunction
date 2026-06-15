scoreboard players enable @s pipes.trigger
data modify storage pipes:grid dialog.game.body.contents[3] set from storage pipes:grid record.is_false
execute unless data storage pipes:grid settings{record:true} run return run function pipes:display/show with storage pipes:grid dialog
function pipes:record/operation
data modify storage pipes:grid dialog.game.body.contents[3] set from storage pipes:grid record.is_true
scoreboard players reset @s pipes.timer
function pipes:display/show with storage pipes:grid