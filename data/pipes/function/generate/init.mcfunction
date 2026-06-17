tag @s remove pipes.quit
tag @s remove pipes.lock
tag @s remove pipes.win
scoreboard players reset @s pipes.timer
execute if data storage pipes:grid dialog.game.actions[{action:{command:"trigger pipes.trigger set 20"}}] run function pipes:generate/unlock