#>sco:stage_data/data_fetch
#@api
data modify storage sco:data stage set value ""
data modify storage sco:data shop set value ""
data modify storage sco:data options set value {}
$function sco:stage_data/stage/$(stage)/data