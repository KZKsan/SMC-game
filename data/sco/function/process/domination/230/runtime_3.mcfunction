#>sco:process/domination/230/runtime_3
#@within sco:process/domination/230
function sco:stage_data/stage_object/set_match
#execute as @e[tag=beacon.all] run function sco:stage_data/stage_object/copy_match
execute if data storage sco:data options{reset:true} run function sco:stage_data/reset
#ドミネーション用のオブジェクト
function sco:process/object/teleport_point/set/
function sco:process/domination/object/set