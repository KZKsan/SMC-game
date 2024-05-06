#>math/sqrt/loop
data modify storage _ math.tmp set value [0d,0d,0d,0d,0d,1d,0d,0d,0d,0d,1d,0d,0d,0d,0d,0d]
data modify storage _ math.tmp[-1] set from storage _ math.sqrt.a
data modify storage _ math.tmp[3] set from storage _ math.sqrt.x
data modify storage _ math.sqrt.last set from storage _ math.sqrt.x

data modify entity 1-0-2-0-2 transformation set from storage _ math.tmp
data modify storage _ math.add.a set from storage _ math.sqrt.a
data modify storage _ math.add.b set from entity 1-0-2-0-2 transformation.translation[0]
function math/add/macro with storage _ math.add
data modify storage _ math.tmp set value [0d,0d,0d,0d,0d,1d,0d,0d,0d,0d,1d,0d,0d,0d,0d,2d]
data modify storage _ math.tmp[3] set from entity 1-0-2-0-1 Pos[0]
data modify entity 1-0-2-0-2 transformation set from storage _ math.tmp
data modify storage _ math.add.a set value 0.0d
data modify storage _ math.add.b set from entity 1-0-2-0-2 transformation.translation[0]
function math/add/macro with storage _ math.add
data modify storage _ math.sqrt.x set from storage _ math.sqrt.last
execute store success storage _ math.sqrt.success byte 1 run data modify storage _ math.sqrt.x set from entity 1-0-2-0-1 Pos[0]
scoreboard players remove #i _ 1
execute if score #i _ matches 0 run return 1
execute if data storage _ math.sqrt{success:1b} run function math/sqrt/loop



