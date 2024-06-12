#>sco:regine/penalty_area/death/input/
#@public
data remove storage c_str str
function sco:regine/penalty_area/death/input/loop
execute if data storage c_str str[1] run function c_str/
data modify storage sco:data penalty_area.struct.death set from storage c_str str[0]