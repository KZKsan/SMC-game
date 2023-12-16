#>enderface:gui_layoutes/shop/set_trade_data/single_data/potion/magic_bullet_of_anti_gravity
#@within enderface:gui_layoutes/shop/set_trade_data/category/potions

#>
#@private
#declare loot_table sco_items:potion/magic_bullet_of_anti_gravity
#declare loot_table sco_items:magic_bullet_element
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:potion/magic_bullet_of_anti_gravity
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with command_block 64
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with blaze_rod{display:{Name:'[{"text": "Enemy ", "color": "green", "bold": true, "italic": false},{"text": "Killer", "color": "red", "bold": true, "italic": false}]'},Enchantments:[{id:"minecraft:sharpness",lvl:255s}]} 64
#loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 loot sco_items:magic_bullet_element
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _