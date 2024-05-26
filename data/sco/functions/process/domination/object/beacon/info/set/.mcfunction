#>sco:process/domination/object/beacon/info/set/
#@within sco:process/domination/object/beacon/info/**
data modify storage _ data_fetch set value {}
data modify storage _ data_fetch.UUID set from entity @s UUID
execute store result storage _ data_fetch.num int 1 run scoreboard players get @e[type=item_display,limit=1,tag=beacon.core,tag=origin] stage_object.count.0
function sco:process/domination/object/beacon/info/set/macro with storage _ data_fetch