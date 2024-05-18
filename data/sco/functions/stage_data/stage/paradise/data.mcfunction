#>sco:stage_data/stage/paradise/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "paradise"
data modify storage sco:input shop set value ""
#data modify storage sco:input regine_area.stage set value {1:[-245, -7, -118],2:[-385, -64, -56]}
data modify storage sco:input block_area.input append value {name:"stage",1:[-245, -8, -118],2:[-385, -63, -56]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.penalty append value {name:"stage",1:[-245, -22, -118],2:[-385, -64, -56]}
data modify storage sco:input penalty_area.input.death append value {name:"stage",1:[-245, -17, -118],2:[-385, -64, -56]}
data modify storage sco:input stage_name set value '{"text":"ラクエン"}'
data modify storage sco:input stage_description set value '{"text":"Edit by KZK1945"}'
data modify storage sco:input respawn append value {name:"stage_red",pos:"-367 -56 -86 -70 0"}
data modify storage sco:input respawn append value {name:"stage_blue",pos:"-263 -56 -88 110 0"}
function sco:stage_data/shop/
function sco:stage_data/sudden_death/


#domination
data modify storage sco:input domination.beacon.set_pos set value []
data modify storage sco:input domination.beacon.set_pos append value {pos:[-283,-50,-94],num:0}
data modify storage sco:input domination.beacon.set_pos append value {pos:[-315,-53,-87],num:1}
data modify storage sco:input domination.beacon.set_pos append value {pos:[-347,-50,-80],num:2}

data modify storage sco:input domination.progress_value set value [0,10,12,15]
data modify storage sco:input domination.assist_progress_value set value [0,1,20,50]
data modify storage sco:input domination.capture_value set value [40,20,12,0]
data modify storage sco:input domination.assist_capture_value set value [0,10,8,0]
data modify storage sco:input domination.fix_value set value [0,10,5,2]
data modify storage sco:input domination.progress_time set value 60000
data modify storage sco:input domination.capture_time set value 4000
data modify storage sco:input domination.respawn.fixed set value 100
