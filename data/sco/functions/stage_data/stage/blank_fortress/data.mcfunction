#>sco:stage_data/stage/blank_fortress/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "blank_fortress"
data modify storage sco:input shop set value ""
data modify storage sco:input options set value {reset:1b,gimmick:true,generate:true}
data modify storage sco:input block_area.input append value {name:"stage",1:[-784, -48, -225],2:[-625, 9, -304]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.death append value {name:"stage",1:[-784, -48, -225],2:[-625, 9, -304]}
data modify storage sco:input penalty_area.input.penalty append value {name:"stage",1:[-784, -48, -225],2:[-625, 0, -304]}
data modify storage sco:input stage_name set value '{"text":"ウツロヨウサイ"}'
data modify storage sco:input stage_description set value '{"text":"Edit by KZK1945"}'
data modify storage sco:input respawn append value {name:"stage_red",pos:"-630 -32 -230 135 0"}
data modify storage sco:input respawn append value {name:"stage_blue",pos:"-779 -32 -299 -45 0"}
function sco:stage_data/shop/
function sco:stage_data/sudden_death/
