#>enderface:gui_layoutes/shop/set_trade_data/check_data/
#@within tag/function enderface:set_trade_data

scoreboard players set #test _ 0
data modify storage _ _ set from storage sco:shop armors
function enderface:gui_layoutes/shop/set_trade_data/check_data/remove_uuid
execute store success score # _ run data modify storage sco:shop last_data.armors set from storage _ _
scoreboard players operation #test _ += # _
data modify storage _ _ set from storage sco:shop arrows
function enderface:gui_layoutes/shop/set_trade_data/check_data/remove_uuid
execute store success score # _ run data modify storage sco:shop last_data.arrows set from storage _ _
scoreboard players operation #test _ += # _
data modify storage _ _ set from storage sco:shop others
function enderface:gui_layoutes/shop/set_trade_data/check_data/remove_uuid
execute store success score # _ run data modify storage sco:shop last_data.others set from storage _ _
scoreboard players operation #test _ += # _
data modify storage _ _ set from storage sco:shop potions
function enderface:gui_layoutes/shop/set_trade_data/check_data/remove_uuid
execute store success score # _ run data modify storage sco:shop last_data.potions set from storage _ _
scoreboard players operation #test _ += # _
data modify storage _ _ set from storage sco:shop sell_item
function enderface:gui_layoutes/shop/set_trade_data/check_data/remove_uuid
execute store success score # _ run data modify storage sco:shop last_data.sell_item set from storage _ _
scoreboard players operation #test _ += # _
data modify storage _ _ set from storage sco:shop weapons
function enderface:gui_layoutes/shop/set_trade_data/check_data/remove_uuid
execute store success score # _ run data modify storage sco:shop last_data.weapons set from storage _ _
scoreboard players operation #test _ += # _

execute if score #test _ matches 1.. run function sco:player/kit_memory/