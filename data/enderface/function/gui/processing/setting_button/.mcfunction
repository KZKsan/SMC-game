#>enderface:gui/processing/setting_button/
#@within enderface:gui/processing/main
data modify storage enderface:data setting_button.mode set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events.setting_button.mode
$data modify storage enderface:data setting_button.value set from storage $(data_name)
execute if data storage enderface:data setting_button{mode:"toggle"} run function enderface:gui/processing/setting_button/toggle
execute if data storage enderface:data setting_button{mode:"quad"} run function enderface:gui/processing/setting_button/quad
$data modify storage $(data_name) set from storage enderface:data setting_button.value