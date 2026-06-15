data modify storage pipes:grid dialog.game.actions[{action:{command:"trigger pipes.trigger set 19"}}].label.translate set value "dialog.pipes.game.quit_lock"
data modify storage pipes:grid dialog.game.actions[{action:{command:"trigger pipes.trigger set 19"}}].tooltip.translate set value ""
data modify storage pipes:grid dialog.game.actions[{action:{command:"trigger pipes.trigger set 19"}}].action.command set value "trigger pipes.trigger set 20"
function pipes:display/show with storage pipes:grid dialog
tag @s add pipes.lock