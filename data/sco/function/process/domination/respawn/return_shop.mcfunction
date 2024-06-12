#>sco:process/domination/respawn/return_shop
#@within sco:process/domination/**
execute if entity @s[team=red] run function sco:tp/respawn/save {name:"shop_red"}
execute if entity @s[team=blue] run function sco:tp/respawn/save {name:"shop_blue"}
function sco:tp/respawn/
gamemode adventure
effect give @s instant_health 60 100
data modify storage sco:inventory_histories inventory_data.input set from storage p-storage _[0].data.inventory_histories[{name:"respawn"}].Items
function sco:player/inventory_histories/return_items/
tag @s add rg.item_function_limit
tag @s add rg.shot_projectiles
tag @s add rg.barrier_effects
tag @s remove rg.block_area
tag @s remove rg.penalty_respawn