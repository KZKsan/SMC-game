#>sco:process/kick_out/respawn/normal
#@within sco:process/kick_out/**
function sco:regine/penalty_area/reset_flag/single
effect give @s regeneration 3 100
effect give @s instant_health 60 100
effect give @s absorption 5 9
execute if entity @s[team=red] run function sco:process/kick_out/game_flag/score/blue
execute if entity @s[team=blue] run function sco:process/kick_out/game_flag/score/red
function sco:tp/respawn/
data modify storage sco:inventory_histories inventory_data.input set from storage p-storage _[0].data.inventory_histories[{name:"respawn"}].Items
function sco:player/inventory_histories/return_items/