#>sco:process/domination/object/beacon/set/
#@within sco:process/**
data modify storage sco:data domination.beacon.tmp set from storage sco:data domination.beacon.set_pos
execute if data storage sco:data domination.beacon.tmp[0] run function sco:process/domination/object/beacon/set/loop