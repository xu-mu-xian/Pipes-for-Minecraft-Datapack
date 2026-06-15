data modify storage pipes:grid cache.processing_data set from storage pipes:grid grid
data modify storage pipes:grid dialog.game.body.contents[2] set value [""]
data modify storage pipes:grid cache.processing_data_cache set value []
function pipes:display/height
data modify storage pipes:grid dialog.game.body.contents[2][-1] set value "\n\n\n\n"
execute unless entity @s[tag=pipes.win] run data modify storage pipes:grid dialog.game.body.contents[3] set value ""
execute if entity @s[tag=pipes.win] run function pipes:display/win
function pipes:display/title with storage pipes:grid generate
function pipes:display/show with storage pipes:grid dialog
data remove storage pipes:grid cache.processing_data