#>sco:regine/block_area/input/
#@public
data remove storage c_str str
function sco:regine/block_area/input/loop
execute if data storage c_str str[1] run function c_str/
data modify storage sco:data block_area.struct set from storage c_str str[0]