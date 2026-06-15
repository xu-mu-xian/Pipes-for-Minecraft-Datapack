scoreboard objectives add pipes.operation trigger
scoreboard objectives add pipes.right_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add pipes.seed trigger
scoreboard objectives add pipes.timer trigger
scoreboard objectives add pipes.trigger trigger
scoreboard objectives add pipes.var dummy

scoreboard objectives add pipes.constant dummy
scoreboard players set #-1 pipes.constant -1
scoreboard players set #2 pipes.constant 2
scoreboard players set #5 pipes.constant 5
scoreboard players set #10 pipes.constant 10
scoreboard players set #20 pipes.constant 20
scoreboard players set #60 pipes.constant 60
scoreboard players set #100 pipes.constant 100
scoreboard players set #1000 pipes.constant 1000

execute unless data storage pipes:grid dialog.game run function pipes:init
execute if data storage pipes:grid settings{trigger:true} run scoreboard players enable @a pipes.trigger

gamerule send_command_feedback false
gamerule max_command_sequence_length 1000000