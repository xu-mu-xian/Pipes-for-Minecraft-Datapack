advancement revoke @s only pipes:item
scoreboard players reset @s pipes.right_click
scoreboard players enable @s pipes.trigger
execute unless data storage pipes:grid settings{trigger:true} run return run tellraw @s {color:"red",translate:"item.pipes.pipes_trigger.fail"}
function pipes:game/main_menu
playsound block.enchantment_table.use player @s ~ ~ ~