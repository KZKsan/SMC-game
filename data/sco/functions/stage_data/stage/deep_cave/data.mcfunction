#>sco:stage_data/stage/deep_cave/data
#@within sco:stage_data/data_fetch
data modify storage sco:data stage set value "deep_cave"
data modify storage sco:data shop set value ""
data modify storage sco:data options set value {reset:1b}
data modify storage sco:data regine_area.stage set value {1:[-460, -2, -677],2:[-357, -57, -578]}
data modify storage sco:data stage_name set value '{"text":"deep_cave"}'
data modify storage sco:data stage_description set value '{"text":"地下空洞"}'
function sco:stage_data/shop/
function sco:stage_data/sudden_death/