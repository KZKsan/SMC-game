#>sco_items:item_functions/hidden_cover/actionbar/
#@within sco_items:item_functions/hidden_cover/holding
scoreboard players set #21 _ 21
scoreboard players set #1500 _ 1500
scoreboard players set # _ 1500
scoreboard players operation # _ -= @s hidden_cover.time
scoreboard players operation # _ *= #21 _
scoreboard players operation # _ /= #1500 _
execute if entity @s[tag=!hidden_cover.lock] run function sco_items:item_functions/hidden_cover/actionbar/run
execute if entity @s[tag=hidden_cover.lock] run function sco_items:item_functions/hidden_cover/actionbar/lock