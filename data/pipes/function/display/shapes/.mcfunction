execute if data storage pipes:grid cache.processing_tile{side:[B;1b,0b,0b,0b]} run return run function pipes:display/shapes/1000
execute if data storage pipes:grid cache.processing_tile{side:[B;0b,1b,0b,0b]} run return run function pipes:display/shapes/0100
execute if data storage pipes:grid cache.processing_tile{side:[B;0b,0b,1b,0b]} run return run function pipes:display/shapes/0010
execute if data storage pipes:grid cache.processing_tile{side:[B;0b,0b,0b,1b]} run return run function pipes:display/shapes/0001
execute if data storage pipes:grid cache.processing_tile{side:[B;1b,0b,1b,0b]} run return run function pipes:display/shapes/1010
execute if data storage pipes:grid cache.processing_tile{side:[B;0b,1b,0b,1b]} run return run function pipes:display/shapes/0101
execute if data storage pipes:grid cache.processing_tile{side:[B;1b,1b,0b,0b]} run return run function pipes:display/shapes/1100
execute if data storage pipes:grid cache.processing_tile{side:[B;0b,1b,1b,0b]} run return run function pipes:display/shapes/0110
execute if data storage pipes:grid cache.processing_tile{side:[B;0b,0b,1b,1b]} run return run function pipes:display/shapes/0011
execute if data storage pipes:grid cache.processing_tile{side:[B;1b,0b,0b,1b]} run return run function pipes:display/shapes/1001
execute if data storage pipes:grid cache.processing_tile{side:[B;1b,1b,0b,1b]} run return run function pipes:display/shapes/1101
execute if data storage pipes:grid cache.processing_tile{side:[B;1b,1b,1b,0b]} run return run function pipes:display/shapes/1110
execute if data storage pipes:grid cache.processing_tile{side:[B;0b,1b,1b,1b]} run return run function pipes:display/shapes/0111
execute if data storage pipes:grid cache.processing_tile{side:[B;1b,0b,1b,1b]} run return run function pipes:display/shapes/1011
data modify storage pipes:grid cache.display set value {font:"pipes:tube",text:"o"}