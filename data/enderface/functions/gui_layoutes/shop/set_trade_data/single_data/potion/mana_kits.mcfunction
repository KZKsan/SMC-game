#>enderface:gui_layoutes/shop/set_trade_data/single_data/potion/mana_kits
#@within enderface:gui_layoutes/shop/set_trade_data/category/potions
#>
#@private
#declare loot_table sco_items:mana_element
#>
#@private
#declare loot_table sco_items:potion/magic_bullet_of_fetters
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:potion/magic_bullet_of_fetters
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:mana_element
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 1b
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

#>
#@private
#declare loot_table sco_items:potion/magic_bullet_of_confusion
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:potion/magic_bullet_of_confusion
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:mana_element
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 1b
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

#>
#@private
#declare loot_table sco_items:potion/healing_potion
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:potion/healing_potion
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 loot sco_items:potion/healing_potion
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:mana_element
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 2b
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

#>
#@private
#declare loot_table sco_items:potion/magic_bullet_of_anti_gravity
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:potion/magic_bullet_of_anti_gravity
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:mana_element
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 1b
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

#>
#@private
#declare loot_table sco_items:potion/magic_bullet_of_damage
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:potion/magic_bullet_of_damage
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:mana_element
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 2b
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _