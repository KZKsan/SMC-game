#>enderface:gui/processing/kit_memory/load/
#@within enderface:gui/processing/kit_memory/
tellraw @s {"text":">Kitデータを再現しました。","color": "green"}
data modify storage _ data_fetch.number set from storage p-storage _[0].data.page
function enderface:gui/processing/kit_memory/load/macro with storage _ data_fetch
loot give @s[tag=join_red] loot sco_items:team_color/red
loot give @s[tag=join_blue] loot sco_items:team_color/blue
playsound block.note_block.bit record @s ~ ~ ~ 0.5 1