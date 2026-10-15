tag @s add pipes.timestamp
item replace entity @s container.0 with player_head 1
execute as @p run item modify entity @n[type=item_display,tag=pipes.timestamp] container.0 {entity:"this",type:"minecraft:fill_player_head"}
data modify storage pipes:grid base64.input.content set from entity @s item.components."minecraft:profile".properties[0].value
kill @s