function pipes:display/show with storage pipes:grid
execute if data storage pipes:grid settings{record: true} unless entity @s[tag=pipes.win] run tag @s remove pipes.quit