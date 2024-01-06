#>sco_items:actionbar/
#@public
function p-storage/get

execute if data storage p-storage _[0].data.item_actionbar_flag{crows_sorrow:1b} run function sco_items:item_functions/crows_sorrow/actionbar
execute if data storage p-storage _[0].data.item_actionbar_flag{hidden_cover:1b} run function sco_items:item_functions/hidden_cover/actionbar/

data modify storage c_str str set from storage p-storage _[0].data.item_actionbar
function c_str/
data remove storage _ data_fetch
data modify storage _ data_fetch.str set from storage c_str str[0]
function sco_items:actionbar/macro with storage _ data_fetch
data remove storage p-storage _[0].data.item_actionbar
data remove storage p-storage _[0].data.item_actionbar_flag
tag @s remove item_actionbar