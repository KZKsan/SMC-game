#>enderface:gui/processing/kit_memory/delete/
#@within enderface:gui/processing/kit_memory/
tellraw @s {"text":">Kitデータを削除しました。","color": "dark_red"}
data remove storage _ data_fetch
data modify storage _ data_fetch.number set from storage p-storage _[0].data.page
function enderface:gui/processing/kit_memory/delete/macro with storage _ data_fetch
playsound entity.ender_dragon.flap record @s ~ ~ ~ 0.5 0.5