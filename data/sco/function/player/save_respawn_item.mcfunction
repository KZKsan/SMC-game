#>sco:player/save_respawn_item
#@api
function sco:player/inventory_histories/save
data modify storage p-storage _[0].data.inventory_histories[-1].name set value "respawn"