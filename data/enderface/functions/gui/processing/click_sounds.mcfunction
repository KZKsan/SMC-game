#>enderface:gui/processing/click_sounds
#@within enderface:gui/processing/main
execute if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events{click_sounds:[{sound:"ui.button.click"}]} run playsound ui.button.click record @s ~ ~ ~ 0.5 1
execute if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events{click_sounds:[{sound:"ui.button.toggle"}]} run playsound ui.button.click record @s ~ ~ ~ 0.5 2
execute if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events{click_sounds:[{sound:"ui.button.bell"}]} run playsound entity.experience_orb.pickup record @s ~ ~ ~ 0.5 2