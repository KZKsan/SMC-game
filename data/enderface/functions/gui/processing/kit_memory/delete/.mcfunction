#>enderface:gui/processing/kit_memory/delete/
#@within enderface:gui/processing/kit_memory/
tellraw @s {"text":">Kitデータを削除しました。","color": "green"}
data modify storage _ data_fetch.number set from storage p-storage _[0].data.page
function enderface:gui/processing/kit_memory/delete/macro with storage _ data_fetch