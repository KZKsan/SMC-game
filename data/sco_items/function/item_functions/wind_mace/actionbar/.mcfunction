#>sco_items:item_functions/wind_mace/actionbar/
#@within sco_items:main
function sco_items:actionbar/set_str
scoreboard players set #6 _ 6
scoreboard players operation #time _ = #wind_mace.set_cooltime sco_items.configs
scoreboard players operation #time _ -= @s wind_mace.cooldown
scoreboard players operation #time _ *= #6 _
scoreboard players operation #time _ /= #wind_mace.set_cooltime sco_items.configs

execute if score #time _ matches 0 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text":"🌪[","color": "white"},{"text":"■■■■■","color": "red"},{"text":"]","color": "white"}]'
execute if score #time _ matches 1 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text":"🌪[","color": "white"},{"text":"■■■■","color": "red"},{"text":"_","color": "gray"},{"text":"]","color": "white"}]'
execute if score #time _ matches 2 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text":"🌪[","color": "white"},{"text":"■■■","color": "red"},{"text":"__","color": "gray"},{"text":"]","color": "white"}]'
execute if score #time _ matches 3 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text":"🌪[","color": "white"},{"text":"■■","color": "red"},{"text":"___","color": "gray"},{"text":"]","color": "white"}]'
execute if score #time _ matches 4 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text":"🌪[","color": "white"},{"text":"■","color": "red"},{"text":"____","color": "gray"},{"text":"]","color": "white"}]'
execute if score #time _ matches 5.. run data modify storage p-storage _[0].data.item_actionbar append value '[{"text":"🌪[","color": "white"},{"text":"_____","color": "gray"},{"text":"]","color": "white"}]'