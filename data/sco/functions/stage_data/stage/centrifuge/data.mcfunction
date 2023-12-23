#>sco:stage_data/stage/centrifuge/data
#@within sco:stage_data/data_fetch
data modify storage sco:data stage set value "centrifuge"
data modify storage sco:data shop set value ""
data modify storage sco:data options set value {reset:1b}
data modify storage sco:data regine_area.stage set value {1:[-399, -64, -129],2:[-451, -23, -182]}
data modify storage sco:data stage_name set value '{"text":"centrifuge"}'
data modify storage sco:data stage_description set value '{"text":"精製所"}'
function sco:stage_data/shop/
function sco:stage_data/sudden_death/