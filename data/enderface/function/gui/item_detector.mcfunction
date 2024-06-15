#>enderface:gui/item_detector
#@within enderface:main
execute if items entity @s player.cursor *[custom_data~{enderface_item:1b}] run return 1
execute if items entity @s container.* *[custom_data~{enderface_item:1b}] run return 1
execute if items entity @s enderchest.* *[!custom_data~{enderface_item:1b}] run return 1
execute if items entity @s armor.* *[custom_data~{enderface_item:1b}] run return 1
execute if items entity @s weapon.offhand *[custom_data~{enderface_item:1b}] run return 1
execute as @e[type=item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{enderface_item:1b}}}}] run return 1
return fail
#execute unless items entity @s player.cursor *[custom_data~{enderface_item:1b}] unless items entity @s container.* *[custom_data~{enderface_item:1b}] unless items entity @s enderchest.* *[!custom_data~{enderface_item:1b}] unless items entity @s armor.* *[custom_data~{enderface_item:1b}] unless items entity @s weapon.offhand *[custom_data~{enderface_item:1b}] unless entity @n[type=item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{enderface_item:1b}}}}] run return fail
#return 1


#data modify storage enderface:data new_gui set from entity @s EnderItems
#function p-storage/get
#
#data modify storage enderface:data test_gui set from storage p-storage _[0].data.gui
#execute store result storage enderface:data changed byte 1 run data modify storage enderface:data test_gui set from storage enderface:data new_gui
#execute if data storage enderface:data {changed:1b} run function enderface:gui/check