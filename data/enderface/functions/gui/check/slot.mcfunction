#>enderface:gui/check/slot
#@within enderface:gui/check
data modify storage enderface:data new_gui set from entity @s EnderItems

data modify storage enderface:data _ set from storage p-storage _[0].data.gui
data modify storage enderface:data gui_add set value []
data modify storage enderface:data gui_intaract.Item set value {}

function enderface:gui/check/set_dummy_slot

execute store success score $test _ if data storage enderface:data _[0]
execute if score $test _ matches 0 store success score $test _ if data storage enderface:data new_gui[0]
execute if score $test _ matches 1 run function enderface:gui/check/loop