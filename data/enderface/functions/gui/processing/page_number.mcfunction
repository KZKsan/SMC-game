#>enderface:gui/processing/page_number
#@within enderface:gui/processing/main
function marker_storage/get
execute store result score # _ run data get storage enderface:data gui_intaract.Item.tag.click_events.page.number 1
execute store result score #_ _ run data get entity @e[predicate=marker_storage,limit=1] data.page 1
execute if data storage enderface:data gui_intaract.Item.tag.click_events.page{operation:"set"} store result entity @e[predicate=marker_storage,limit=1] data.page int 1 run scoreboard players get # _
execute if data storage enderface:data gui_intaract.Item.tag.click_events.page{operation:"add"} store result entity @e[predicate=marker_storage,limit=1] data.page int 1 run scoreboard players operation #_ _ += # _