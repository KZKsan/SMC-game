#>sco:regine/block_area/input/loop
#@within sco:regine/block_area/input/
#@private
data modify storage sco:data block_area_new set from storage sco:data block_area.input[0]
function sco:regine/block_area/input_pos/block_area/new_area
function sco:regine/block_area/input_pos/block_area/struct_sub_command with storage sco:data block_area.tmp
function sco:regine/block_area/input_pos/updata_area/new_area
function sco:regine/block_area/input_pos/updata_area/struct_sub_command with storage sco:data block_area.tmp
data remove storage sco:data block_area.input[0]
execute if data storage sco:data block_area.input[0] run function sco:regine/block_area/input/loop