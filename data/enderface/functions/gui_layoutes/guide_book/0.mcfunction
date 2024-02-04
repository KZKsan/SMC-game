#>enderface:gui_layoutes/guide_book/0
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

loot replace entity @s enderchest.1 loot enderface:guide/death_match/icon


data remove storage p-storage _[0].data.preview_trade
data modify storage p-storage _[0].data.page set value 0