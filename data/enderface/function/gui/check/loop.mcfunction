#>enderface:gui/check/loop
#@within enderface:gui/check/**

execute unless data storage enderface:data test_gui[0] run data modify storage enderface:data test_gui append value {Slot:-1b,Item:{id:""}}
execute unless data storage enderface:data new_gui[0] run data modify storage enderface:data new_gui append value {Slot:-1b,id:"minecraft:debug_stick",components:{"minecraft:custom_data":{enderface_item:1b,void:1b}}}
execute if data storage enderface:data new_gui[{Slot:-1b,id:""}] run data modify storage enderface:data new_gui[0].Slot set from storage enderface:data test_gui[0].Slot
data modify storage enderface:data slot_test.Item set from storage enderface:data test_gui[0]

#tellraw @p {"nbt":"slot_test","storage":"enderface:data"}
#tellraw @p {"nbt":"new_gui","storage":"enderface:data"}

execute store success storage enderface:data slot_test.changed.Slot byte 1 run data modify storage enderface:data slot_test.Item.Slot set from storage enderface:data new_gui[0].Slot
execute store success storage enderface:data slot_test.changed.Item byte 1 run data modify storage enderface:data slot_test.Item set from storage enderface:data new_gui[0]

execute if data storage enderface:data slot_test.changed{Slot:0b,Item:1b} run function enderface:gui/check/result/hit
execute if data storage enderface:data slot_test.changed{Slot:0b,Item:0b} run function enderface:gui/check/result/skip
execute if data storage enderface:data slot_test.changed{Slot:1b,Item:0b} run function enderface:gui/check/result/invalid
execute if data storage enderface:data slot_test.changed{Slot:1b,Item:1b} run function enderface:gui/check/result/add

#tellraw @p {"nbt":"slot_test.changed","storage":"enderface:data"}

execute store success score #test _ if data storage enderface:data test_gui[0]
execute if score #test _ matches 0 store success score #test _ if data storage enderface:data new_gui[0]
execute if score #test _ matches 1 run function enderface:gui/check/loop