#>sco:process/give_visit_kit
#@within sco:process/11
function sco:player/inventory_histories/save
data modify storage p-storage _[0].data.inventory_histories[-1].name set value "defalut"
clear
function sco_items:kit/visit