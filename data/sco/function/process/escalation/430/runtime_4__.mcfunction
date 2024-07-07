#>sco:process/escalation/430/runtime_4__
#@within sco:process/escalation/430
execute if entity @e[tag=sco-object,limit=1] run function sco:stage_data/stage_object/
execute if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick