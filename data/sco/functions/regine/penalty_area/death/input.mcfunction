#>sco:regine/penalty_area/death/input
#@public
data remove storage c_str str
execute if data storage sco:data penalty_area.input.death.stage run data modify storage sco:data penalty_area_new set from storage sco:data penalty_area.input.death.stage
execute if data storage sco:data penalty_area.input.death.stage run function sco:regine/penalty_area/input_pos/new_area
execute if data storage sco:data penalty_area.input.death.stage run function sco:regine/penalty_area/input_pos/struct_sub_command with storage sco:data penalty_area.tmp
execute if data storage sco:data penalty_area.input.death.shop run data modify storage sco:data penalty_area_new set from storage sco:data penalty_area.input.death.shop
execute if data storage sco:data penalty_area.input.death.shop run function sco:regine/penalty_area/input_pos/new_area
execute if data storage sco:data penalty_area.input.death.shop run function sco:regine/penalty_area/input_pos/struct_sub_command with storage sco:data penalty_area.tmp
execute if data storage sco:data penalty_area.input.death.sudden_death run data modify storage sco:data penalty_area_new set from storage sco:data penalty_area.input.death.sudden_death
execute if data storage sco:data penalty_area.input.death.sudden_death run function sco:regine/penalty_area/input_pos/new_area
execute if data storage sco:data penalty_area.input.death.sudden_death run function sco:regine/penalty_area/input_pos/struct_sub_command with storage sco:data penalty_area.tmp
execute if data storage c_str str[1] run function c_str/
data modify storage sco:data penalty_area.struct.death set from storage c_str str[0]