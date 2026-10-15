tag @s remove pipes.quit
tag @s remove pipes.lock
tag @s remove pipes.win
tag @s remove pipes.recorded
scoreboard players reset @s pipes.timer
scoreboard players reset @s pipes.steps
execute if data storage pipes:grid dialog.game.actions[{action:{command:"trigger pipes.trigger set 20"}}] run function pipes:generate/unlock