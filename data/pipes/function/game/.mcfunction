advancement revoke @s only pipes:trigger
dialog clear @s
execute if data storage pipes:grid settings{trigger:true} run function pipes:game/trigger
scoreboard players reset @s pipes.trigger
scoreboard players enable @s pipes.trigger