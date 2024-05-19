#>sco:process/kick_out/130/runtime_4__
#@within sco:process/kick_out/130
execute if entity @e[tag=sco-object,limit=1] run function sco:stage_data/stage_object/
execute if score #runtime game matches 4.. if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick