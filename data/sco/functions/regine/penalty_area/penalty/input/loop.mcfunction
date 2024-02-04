#>sco:regine/penalty_area/penalty/input/loop
#@within sco:regine/penalty_area/penalty/input/
#@private
data modify storage sco:data penalty_area_new set from storage sco:data penalty_area.input.penalty[0]
function sco:regine/penalty_area/input_pos/new_area
function sco:regine/penalty_area/input_pos/struct_sub_command with storage sco:data penalty_area.tmp
data remove storage sco:data penalty_area.input.penalty[0]
execute if data storage sco:data penalty_area.input.penalty[0] run function sco:regine/penalty_area/penalty/input/loop