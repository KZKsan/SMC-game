#>sco:process/domination/230/runtime_4__
#@within sco:process/domination/230
execute if entity @e[tag=sco-object,limit=1] run function sco:stage_data/stage_object/
execute if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick
#ドミネーション用のオブジェクト
execute as @e[type=interaction,tag=teleport_point] run function sco:process/object/teleport_point/
function sco:process/domination/object/main