#>minecraft:c_str/loop
#@within c_str/
#@private
data modify storage c_str _.1 set from storage c_str str[0]
data modify storage c_str _.2 set from storage c_str str[1]
data remove storage c_str str[0]
data remove storage c_str str[0]
function c_str/merge with storage c_str _
execute if data storage c_str str[1] run function c_str/loop