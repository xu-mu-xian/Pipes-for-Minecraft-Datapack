#生成地图
function pipes:prim/

#打乱管道
function pipes:upset/

#解题判定
function pipes:operation/tarjan/

#显示生成结果
function pipes:display/

#计算时间
tag @s remove pipes.quit
execute if data storage pipes:grid settings{record: true} run scoreboard players set @s pipes.timer 0