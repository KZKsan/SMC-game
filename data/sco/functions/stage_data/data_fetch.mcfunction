#>sco:stage_data/data_fetch
#@api
data modify storage sco:input stage set value ""
data modify storage sco:input shop set value ""
data modify storage sco:input options set value {}
data modify storage sco:input regine_area set value {}
data modify storage sco:input block_area set value {input:[]}
data modify storage sco:input regine_area_new set value {}
data modify storage sco:input penalty_area set value {input:{penalty:[],death:[]}}
data modify storage sco:input stage_name set value ""
data modify storage sco:input stage_description set value ''
$function sco:stage_data/stage/$(stage)/data