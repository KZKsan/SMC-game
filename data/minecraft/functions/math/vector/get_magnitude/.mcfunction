#>math/vector/get_magnitude/
#@api
#@input _ math.input [0d,0d,0d]
#@output _ math.output 0d

data modify storage _ math.vector.get_magnitude.input.x set from storage _ math.input[0]
data modify storage _ math.vector.get_magnitude.input.y set from storage _ math.input[1]
data modify storage _ math.vector.get_magnitude.input.z set from storage _ math.input[2]

function math/set_entity/marker
function math/vector/get_magnitude/macro/0 with storage _ math.vector.get_magnitude.input
execute store result storage _ math.vector.get_magnitude.rot._y int 1 run data get entity @e[tag=math_entity,tag=marker,type=marker,limit=1] Rotation[0] 1
execute store result storage _ math.vector.get_magnitude.rot._x int 1 run data get entity @e[tag=math_entity,tag=marker,type=marker,limit=1] Rotation[1] 1

execute store result score # _ run data get storage _ math.vector.get_magnitude.input.x 1000000
execute if score # _ matches ..-1 store result storage _ math.vector.get_magnitude.input.x double -0.000001 run scoreboard players get # _
execute store result score # _ run data get storage _ math.vector.get_magnitude.input.y 1000000
execute if score # _ matches ..-1 store result storage _ math.vector.get_magnitude.input.y double -0.000001 run scoreboard players get # _
execute store result score # _ run data get storage _ math.vector.get_magnitude.input.z 1000000
execute if score # _ matches ..-1 store result storage _ math.vector.get_magnitude.input.z double -0.000001 run scoreboard players get # _

function math/vector/get_magnitude/macro/0 with storage _ math.vector.get_magnitude.input

execute store result storage _ math.vector.get_magnitude.rot.y int -1 run data get entity @e[tag=math_entity,tag=marker,type=marker,limit=1] Rotation[0] 1
execute store result storage _ math.vector.get_magnitude.rot.x int -1 run data get entity @e[tag=math_entity,tag=marker,type=marker,limit=1] Rotation[1] 1
function math/vector/get_magnitude/macro/1 with storage _ math.vector.get_magnitude.rot
function minecraft:math/set_entity/display

#z0
function math/set_entity/marker
function math/vector/get_magnitude/z0

#z1
function math/set_entity/marker
function math/vector/get_magnitude/z1

#z2
function math/set_entity/marker
function math/vector/get_magnitude/z2

#z0 + z1 + z2
function math/set_entity/marker
function math/vector/get_magnitude/macro/2 with storage _ math.vector.get_magnitude.num
data remove storage _ math.output
data modify storage _ math.output.magnitude set from entity @e[tag=math_entity,tag=marker,type=marker,limit=1] Pos[0]
data modify storage _ math.output.rot_y set from storage _ math.vector.get_magnitude.rot._y
data modify storage _ math.output.rot_x set from storage _ math.vector.get_magnitude.rot._x
kill 1-0-2-0-2
kill @e[tag=math_entity,tag=marker,type=marker]