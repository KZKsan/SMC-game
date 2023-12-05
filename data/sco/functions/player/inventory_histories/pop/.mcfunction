#>sco:player/inventory_histories/pop/
#@api
function p-storage/get
execute if data storage p-storage _[0].data.inventory_histories[0] run function sco:player/inventory_histories/pop/load_data
