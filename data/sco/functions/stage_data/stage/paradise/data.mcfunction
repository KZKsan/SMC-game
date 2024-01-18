#>sco:stage_data/stage/paradise/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "paradise"
data modify storage sco:input shop set value ""
data modify storage sco:input regine_area.stage set value {1:[-245, -7, -118],2:[-385, -64, -56]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:1b,shop:0b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:1b,shop:0b,sudden_death:1b}
data modify storage sco:input penalty_area.input.penalty append value {name:"stage",1:[-245, -22, -118],2:[-385, -64, -56]}
data modify storage sco:input penalty_area.input.death append value {name:"stage",1:[-245, -17, -118],2:[-385, -64, -56]}
data modify storage sco:input stage_name set value '{"text":"ラクエン"}'
data modify storage sco:input stage_description set value '{"text":"Edit by KZK1945"}'
function sco:stage_data/shop/
function sco:stage_data/sudden_death/