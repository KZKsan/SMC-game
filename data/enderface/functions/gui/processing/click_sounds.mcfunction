#>enderface:gui/processing/click_sounds
#@within enderface:gui/processing/main

execute if data storage enderface:data gui_intaract.Item.tag.click_events{click_sounds:[{sound:"ui.button.click"}]} run playsound ui.button.click record @s ~ ~ ~ 1 1
