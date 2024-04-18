#>enderface:gui/processing/kit_memory/save/macro
#@within enderface:gui/processing/kit_memory/save/
$execute unless data storage p-storage _[0].data.save_kit[{number:$(number)}] run data modify storage p-storage _[0].data.save_kit append value {number:$(number)}
$data modify storage p-storage _[0].data.save_kit[{number:$(number)}].inventory set from entity @s Inventory
$data remove storage p-storage _[0].data.save_kit[{number:$(number)}].inventory[{components:{"minecraft:custom_data":{disable_copy:1b}}}]