#>sco:process/domination/object/beacon/capture/both_capture
#@within sco:process/domination/object/beacon/capture/**
execute if entity @p[distance=..7,team=red,predicate=gamemode/as] if entity @p[distance=..7,team=blue,predicate=gamemode/as] run return 1
return fail