#>sco:process/domination/object/beacon/set/loop
#@within sco:process/domination/object/beacon/set/
#@private
data modify storage sco:data domination.beacon.pos set from storage sco:data domination.beacon.tmp[0]
data remove storage sco:data domination.beacon.tmp[0]
data modify storage sco:data domination.beacon.pos.x set from storage sco:data domination.beacon.pos.pos[0]
data modify storage sco:data domination.beacon.pos.y set from storage sco:data domination.beacon.pos.pos[1]
data modify storage sco:data domination.beacon.pos.z set from storage sco:data domination.beacon.pos.pos[2]
function sco:process/domination/object/beacon/set/macro with storage sco:data domination.beacon.pos
execute if data storage sco:data domination.beacon.tmp[0] run function sco:process/domination/object/beacon/set/loop
