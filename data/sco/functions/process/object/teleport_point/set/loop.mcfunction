#>sco:process/object/teleport_point/set/loop
#@within sco:process/object/teleport_point/set/
#@private
data modify storage sco:data teleport_point.pos set from storage sco:data teleport_point.tmp[0]
data remove storage sco:data teleport_point.tmp[0]
function sco:process/object/teleport_point/set/macro with storage sco:data teleport_point
execute if data storage sco:data teleport_point.tmp[0] run function sco:process/object/teleport_point/set/loop
