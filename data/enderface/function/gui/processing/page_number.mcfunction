#>enderface:gui/processing/page_number
#@within enderface:gui/processing/main
execute store result score # _ run data get storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events.page.number 1
execute store result score #_ _ run data get storage p-storage _[0].data.page 1
execute if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events.page{operation:"set"} store result storage p-storage _[0].data.page int 1 run scoreboard players get # _
execute if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events.page{operation:"add"} store result storage p-storage _[0].data.page int 1 run scoreboard players operation #_ _ += # _