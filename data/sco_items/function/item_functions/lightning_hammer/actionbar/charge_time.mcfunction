#>sco_items:item_functions/lightning_hammer/actionbar/charge_time
#@within sco_items:item_functions/lightning_hammer/actionbar/

scoreboard players set #6 _ 6
#scoreboard players operation #time _ = #lightning_hammer.charge_time sco_items.configs
scoreboard players operation #time _ = @s lightning_hammer_holding_time
scoreboard players operation #time _ *= #6 _
scoreboard players operation #time _ /= #lightning_hammer.charge_time sco_items.configs

execute if score #time _ matches 5.. run data modify storage p-storage _[0].data.item_actionbar append value '[{"text":"⚡[","color": "white"},{"text":"■■■■■","color": "green"},{"text":"]","color": "white"}]'
execute if score #time _ matches 4 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text":"⚡[","color": "white"},{"text":"■■■■","color": "green"},{"text":"_","color": "gray"},{"text":"]","color": "white"}]'
execute if score #time _ matches 3 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text":"⚡[","color": "white"},{"text":"■■■","color": "green"},{"text":"__","color": "gray"},{"text":"]","color": "white"}]'
execute if score #time _ matches 2 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text":"⚡[","color": "white"},{"text":"■■","color": "green"},{"text":"___","color": "gray"},{"text":"]","color": "white"}]'
execute if score #time _ matches 1 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text":"⚡[","color": "white"},{"text":"■","color": "green"},{"text":"____","color": "gray"},{"text":"]","color": "white"}]'
execute if score #time _ matches 0 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text":"⚡[","color": "white"},{"text":"_____","color": "gray"},{"text":"]","color": "white"}]'