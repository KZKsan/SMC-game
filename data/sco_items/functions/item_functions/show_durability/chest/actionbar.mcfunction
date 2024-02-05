#>sco_items:item_functions/show_durability/chest/actionbar
#@within sco_items:item_functions/show_durability/chest/

data modify storage _ data_fetch.id set from entity @s ArmorItems[2].id
execute store result score # _ run data get entity @s ArmorItems[2].tag.Damage
execute store result score #_ _ run function item/damage_data
scoreboard players operation # _ -= #_ _
scoreboard players set #101 _ 101
scoreboard players operation # _ *= #101 _
execute store result storage _ _ int -1 run scoreboard players operation # _ /= #_ _
data modify storage c_str str set value []
data modify storage c_str str append value '[{"text": "胴: ","bold": true,"color": "white"},"'
data modify storage c_str str append string storage _ _
data modify storage c_str str append value '",{"text": "%","color": "white"}]'
function c_str/
data modify storage p-storage _[0].data.item_actionbar append from storage c_str str[0]