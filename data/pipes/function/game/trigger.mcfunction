execute if score @s pipes.trigger matches 1 run return run function pipes:game/main_menu
execute if score @s pipes.trigger matches 2 run return run function pipes:game/resume
execute if score @s pipes.trigger matches 3 run return run function pipes:game/new_game/
execute if score @s pipes.trigger matches 4 run return run function pipes:generate/random {w:4,h:4}
execute if score @s pipes.trigger matches 5 run return run function pipes:generate/random {w:5,h:5}
execute if score @s pipes.trigger matches 6 run return run function pipes:generate/random {w:6,h:6}
execute if score @s pipes.trigger matches 7 run return run function pipes:generate/random {w:7,h:7}
execute if score @s pipes.trigger matches 8 run return run function pipes:generate/random {w:8,h:8}
execute if score @s pipes.trigger matches 9 run return run function pipes:generate/random {w:9,h:9}
execute if score @s pipes.trigger matches 10 run return run function pipes:generate/random {w:10,h:10}
execute if score @s pipes.trigger matches 11 run return run function pipes:generate/random {w:11,h:11}
execute if score @s pipes.trigger matches 12 run return run function pipes:generate/random {w:12,h:12}
execute if score @s pipes.trigger matches 13 run return run function pipes:generate/random {w:13,h:13}
execute if score @s pipes.trigger matches 14 run return run function pipes:generate/random {w:14,h:14}
execute if score @s pipes.trigger matches 15 run return run function pipes:generate/random {w:15,h:15}
execute if score @s pipes.trigger matches 16 run return run function pipes:generate/random {w:16,h:16}
execute if score @s pipes.trigger matches 17 run return run function pipes:game/replay with storage pipes:grid generate
execute if score @s pipes.trigger matches 18 run return run function pipes:game/custom/
execute if score @s pipes.trigger matches 19 run return run function pipes:game/lock/
execute if score @s pipes.trigger matches 20 run return run function pipes:game/lock/quit
execute if score @s pipes.trigger matches 21 run return run function pipes:game/settings/
execute if score @s pipes.trigger matches 22 run return run function pipes:game/daily/
execute if score @s pipes.trigger matches 23 run return run function pipes:game/record/
execute if score @s pipes.trigger matches 24 run return run function pipes:game/record/reset
execute if score @s pipes.trigger matches 33..2727 run return run function pipes:game/custom/random/
execute if score @s pipes.trigger matches -2727..-33 run return run function pipes:game/custom/seed/
execute if score @s pipes.trigger matches 99900.. run return run function pipes:settings/