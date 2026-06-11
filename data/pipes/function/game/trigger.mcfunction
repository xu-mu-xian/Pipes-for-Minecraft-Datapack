execute if score @s pipes.trigger matches 1 run function pipes:game/main_menu
execute if score @s pipes.trigger matches 2 run function pipes:game/resume
execute if score @s pipes.trigger matches 3 run function pipes:game/new_game/
execute if score @s pipes.trigger matches 4 run function pipes:generate/random {w:4,h:4}
execute if score @s pipes.trigger matches 5 run function pipes:generate/random {w:5,h:5}
execute if score @s pipes.trigger matches 6 run function pipes:generate/random {w:6,h:6}
execute if score @s pipes.trigger matches 7 run function pipes:generate/random {w:7,h:7}
execute if score @s pipes.trigger matches 8 run function pipes:generate/random {w:8,h:8}
execute if score @s pipes.trigger matches 9 run function pipes:generate/random {w:9,h:9}
execute if score @s pipes.trigger matches 10 run function pipes:generate/random {w:10,h:10}
execute if score @s pipes.trigger matches 11 run function pipes:generate/random {w:11,h:11}
execute if score @s pipes.trigger matches 12 run function pipes:generate/random {w:12,h:12}
execute if score @s pipes.trigger matches 13 run function pipes:generate/random {w:13,h:13}
execute if score @s pipes.trigger matches 14 run function pipes:generate/random {w:14,h:14}
execute if score @s pipes.trigger matches 15 run function pipes:generate/random {w:15,h:15}
execute if score @s pipes.trigger matches 16 run function pipes:generate/random {w:16,h:16}
execute if score @s pipes.trigger matches 17 run function pipes:game/replay with storage pipes:grid generate
execute if score @s pipes.trigger matches 18 run function pipes:game/custom/
execute if score @s pipes.trigger matches 33..2727 run function pipes:game/custom/random/
execute if score @s pipes.trigger matches -2727..-33 run function pipes:game/custom/seed/
execute if score @s pipes.trigger matches 99990 run function pipes:settings/record/false
execute if score @s pipes.trigger matches 99991 run function pipes:settings/record/true