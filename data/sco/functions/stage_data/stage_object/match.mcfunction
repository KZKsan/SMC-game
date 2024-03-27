#>sco:stage_data/stage_object/match
#@within sco:stage_data/**
execute if score @s stage_object.match.0 = #last stage_object.match.0 if score @s stage_object.match.1 = #last stage_object.match.1 if score @s stage_object.match.2 = #last stage_object.match.2 if score @s stage_object.match.3 = #last stage_object.match.3 run return fail
return 1