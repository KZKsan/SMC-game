#>math/vector/get_magnitude/z2
#@within math/vector/get_magnitude/

execute if data storage _ math.vector.get_magnitude.num{cos_y:0d} run return run data modify storage _ math.vector.get_magnitude.num.z2 set value 0d
execute if data storage _ math.vector.get_magnitude.num{cos_x:0d} run return run data modify storage _ math.vector.get_magnitude.num.z2 set value 0d
execute if data storage _ math.vector.get_magnitude.input{z:0d} run return run data modify storage _ math.vector.get_magnitude.num.z2 set value 0d

data modify storage _ math.tmp set value [0d,0d,0d,1d,0d,1d,0d,0d,0d,0d,1d,0d,0d,0d,0d,1d]
data modify storage _ math.tmp[-1] set from storage _ math.vector.get_magnitude.num.cos_y
data modify entity 1-0-2-0-2 transformation set from storage _ math.tmp
data modify storage _ math.vector.get_magnitude.num.a set from entity 1-0-2-0-2 transformation.translation[0]
function minecraft:math/convert/ftd with storage _ math.vector.get_magnitude.num

data modify storage _ math.tmp set value [0d,0d,0d,1d,0d,1d,0d,0d,0d,0d,1d,0d,0d,0d,0d,1d]
data modify storage _ math.tmp[3] set from storage _ math.vector.get_magnitude.num.cos_x
data modify storage _ math.tmp[-1] set from entity @e[tag=math_entity,tag=marker,type=marker,limit=1] Pos[0]
data modify entity 1-0-2-0-2 transformation set from storage _ math.tmp
data modify storage _ math.vector.get_magnitude.num.a set from entity 1-0-2-0-2 transformation.translation[0]
function minecraft:math/convert/ftd with storage _ math.vector.get_magnitude.num

data modify storage _ math.tmp set value [0d,0d,0d,1d,0d,1d,0d,0d,0d,0d,1d,0d,0d,0d,0d,1d]
data modify storage _ math.tmp[-1] set from entity @e[tag=math_entity,tag=marker,type=marker,limit=1] Pos[0]
data modify entity 1-0-2-0-2 transformation set from storage _ math.tmp
data modify storage _ math.vector.get_magnitude.num.a set from entity 1-0-2-0-2 transformation.translation[0]
function minecraft:math/convert/ftd with storage _ math.vector.get_magnitude.num

data modify storage _ math.tmp set value [0d,0d,0d,1d,0d,1d,0d,0d,0d,0d,1d,0d,0d,0d,0d,1d]
data modify storage _ math.tmp[3] set from storage _ math.vector.get_magnitude.input.z
data modify storage _ math.tmp[-1] set from entity @e[tag=math_entity,tag=marker,type=marker,limit=1] Pos[0]
data modify entity 1-0-2-0-2 transformation set from storage _ math.tmp
data modify storage _ math.vector.get_magnitude.num.a set from entity 1-0-2-0-2 transformation.translation[0]
function minecraft:math/convert/ftd with storage _ math.vector.get_magnitude.num
data modify storage _ math.vector.get_magnitude.num.z2 set from entity @e[tag=math_entity,tag=marker,type=marker,limit=1] Pos[0]