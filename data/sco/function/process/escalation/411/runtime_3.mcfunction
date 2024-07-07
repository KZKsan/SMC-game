#>sco:process/escalation/411/runtime_3
#@within sco:process/escalation/411
function sco:stage_data/stage_object/set_match
execute if data storage sco:data options{generate:true} run function sco:stage_data/generate
execute unless data storage sco:data options{reset:true} run function sco:stage_data/generic_settings
execute if data storage sco:data options{reset:true} run function sco:stage_data/reset