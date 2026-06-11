data modify storage pipes:grid settings.record set value false
data modify storage pipes:grid dialog.body.contents[3] set value {translate:"dialog.pipes.game.complete"}
schedule clear pipes:record/timer
function pipes: