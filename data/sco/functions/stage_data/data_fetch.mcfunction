#>sco:stage_data/data_fetch
#@api
data modify storage sco:data stage set value ""
data modify storage sco:data shop set value ""
data modify storage sco:data options set value {}
data modify storage sco:data regine_area set value {}
data modify storage sco:data regine_area_new set value {}
data modify storage sco:data stage_name set value ""
data modify storage sco:data stage_description set value ''
$function sco:stage_data/stage/$(stage)/data