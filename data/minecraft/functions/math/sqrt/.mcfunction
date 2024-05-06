#>math/sqrt/
#@api
#@input storage  _ math.input.a
#@input storage  _ math.input.x
#@output storage  _ math.output

data modify storage _ math.sqrt.a set from storage _ math.input.a
data modify storage _ math.sqrt.x set from storage _ math.input.x

function math/set_entity/display
function math/set_entity/marker
scoreboard players set #i _ 25
function minecraft:math/sqrt/loop
data modify storage _ math.output set from storage _ math.sqrt.x
kill 1-0-2-0-2
kill 1-0-2-0-1