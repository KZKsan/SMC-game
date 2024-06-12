#>sco:process/object/teleport_point/set/
#@within sco:process/**
data modify storage sco:data teleport_point.tmp set from storage sco:data teleport_point.set_pos
execute if data storage sco:data teleport_point.tmp[0] run function sco:process/object/teleport_point/set/loop