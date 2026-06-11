#从候选边列表抽取
execute store result storage pipes:prim macro.length_of_alternative_side int 1.0 run data get storage pipes:prim alternative_side
function pipes:prim/main/random with storage pipes:prim macro

#删除这一项
function pipes:prim/main/remove with storage pipes:prim macro

#递归
execute if data storage pipes:prim alternative_side[0] run function pipes:prim/main/