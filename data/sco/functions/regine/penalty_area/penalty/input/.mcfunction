#>sco:regine/penalty_area/penalty/input/
#@public
data remove storage c_str str
function sco:regine/penalty_area/penalty/input/loop
execute if data storage c_str str[1] run function c_str/
data modify storage sco:data penalty_area.struct.penalty set from storage c_str str[0]