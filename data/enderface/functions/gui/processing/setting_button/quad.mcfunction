#>enderface:gui/processing/setting_button/quad
#@within enderface:gui/processing/setting_button/
execute store result score #value _ run data get storage enderface:data setting_button.value
execute store result storage enderface:data setting_button.value byte 1 run scoreboard players add #value _ 1
execute if data storage enderface:data setting_button{value:4b} run data modify storage enderface:data setting_button.value set value 0b
