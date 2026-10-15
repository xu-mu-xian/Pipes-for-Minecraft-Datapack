scoreboard objectives add pipes.operation trigger
scoreboard objectives add pipes.right_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add pipes.seed trigger
scoreboard objectives add pipes.steps trigger
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

scoreboard objectives add pipes.base64_char dummy
scoreboard players set #A pipes.base64_char 0
scoreboard players set #B pipes.base64_char 1
scoreboard players set #C pipes.base64_char 2
scoreboard players set #D pipes.base64_char 3
scoreboard players set #E pipes.base64_char 4
scoreboard players set #F pipes.base64_char 5
scoreboard players set #G pipes.base64_char 6
scoreboard players set #H pipes.base64_char 7
scoreboard players set #I pipes.base64_char 8
scoreboard players set #J pipes.base64_char 9
scoreboard players set #K pipes.base64_char 10
scoreboard players set #L pipes.base64_char 11
scoreboard players set #M pipes.base64_char 12
scoreboard players set #N pipes.base64_char 13
scoreboard players set #O pipes.base64_char 14
scoreboard players set #P pipes.base64_char 15
scoreboard players set #Q pipes.base64_char 16
scoreboard players set #R pipes.base64_char 17
scoreboard players set #S pipes.base64_char 18
scoreboard players set #T pipes.base64_char 19
scoreboard players set #U pipes.base64_char 20
scoreboard players set #V pipes.base64_char 21
scoreboard players set #W pipes.base64_char 22
scoreboard players set #X pipes.base64_char 23
scoreboard players set #Y pipes.base64_char 24
scoreboard players set #Z pipes.base64_char 25
scoreboard players set #a pipes.base64_char 26
scoreboard players set #b pipes.base64_char 27
scoreboard players set #c pipes.base64_char 28
scoreboard players set #d pipes.base64_char 29
scoreboard players set #e pipes.base64_char 30
scoreboard players set #f pipes.base64_char 31
scoreboard players set #g pipes.base64_char 32
scoreboard players set #h pipes.base64_char 33
scoreboard players set #i pipes.base64_char 34
scoreboard players set #j pipes.base64_char 35
scoreboard players set #k pipes.base64_char 36
scoreboard players set #l pipes.base64_char 37
scoreboard players set #m pipes.base64_char 38
scoreboard players set #n pipes.base64_char 39
scoreboard players set #o pipes.base64_char 40
scoreboard players set #p pipes.base64_char 41
scoreboard players set #q pipes.base64_char 42
scoreboard players set #r pipes.base64_char 43
scoreboard players set #s pipes.base64_char 44
scoreboard players set #t pipes.base64_char 45
scoreboard players set #u pipes.base64_char 46
scoreboard players set #v pipes.base64_char 47
scoreboard players set #w pipes.base64_char 48
scoreboard players set #x pipes.base64_char 49
scoreboard players set #y pipes.base64_char 50
scoreboard players set #z pipes.base64_char 51
scoreboard players set #0 pipes.base64_char 52
scoreboard players set #1 pipes.base64_char 53
scoreboard players set #2 pipes.base64_char 54
scoreboard players set #3 pipes.base64_char 55
scoreboard players set #4 pipes.base64_char 56
scoreboard players set #5 pipes.base64_char 57
scoreboard players set #6 pipes.base64_char 58
scoreboard players set #7 pipes.base64_char 59
scoreboard players set #8 pipes.base64_char 60
scoreboard players set #9 pipes.base64_char 61
scoreboard players set #+ pipes.base64_char 62
scoreboard players set #/ pipes.base64_char 63
scoreboard players set #= pipes.base64_char 0

execute unless data storage pipes:grid dialog.game run function pipes:init
execute if data storage pipes:grid settings{trigger:true} run scoreboard players enable @a pipes.trigger

gamerule send_command_feedback false
gamerule max_command_sequence_length 1000000