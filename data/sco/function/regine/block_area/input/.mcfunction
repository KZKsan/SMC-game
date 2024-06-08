#>sco:regine/block_area/input/
#@public
data remove storage c_str str
data modify storage sco:data block_area.struct set value {block_area:[],updata_area:[]}
function sco:regine/block_area/input/loop
data modify storage c_str str set from storage sco:data block_area.struct.block_area
execute if data storage c_str str[1] run function c_str/
data modify storage sco:data block_area.struct.block_area set from storage c_str str[0]
data modify storage c_str str set from storage sco:data block_area.struct.updata_area
execute if data storage c_str str[1] run function c_str/
data modify storage sco:data block_area.struct.updata_area set from storage c_str str[0]