#>enderface:gui_layoutes/shop/set_trade_data/single_data/arrows_table
#@within enderface:gui_layoutes/shop/set_trade_data/category/arrows

# arrow
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with arrow 8
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:8}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with spectral_arrow 4
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:16}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

# damage_arrow
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with tipped_arrow{Potion:"harming"}
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 3
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:21}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

# slowness_arrow lv4
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with tipped_arrow{Potion:"strong_slowness"}
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 3
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:21}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _
# slowness_arrow
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with tipped_arrow{Potion:"slowness"}
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 8
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:8}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

# weakness_arrow
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with tipped_arrow{Potion:"weakness"}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:21}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

# poison_arrow
#declare loot_table sco_items:arrow/poison_arrow
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:arrow/poison_arrow
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 3
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:64}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

# blindness_arrow
#declare loot_table sco_items:arrow/blindness_arrow
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:arrow/blindness_arrow
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 3
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:21}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

# levitation_arrow
#declare loot_table sco_items:arrow/levitation_arrow
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:arrow/levitation_arrow
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 3
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:21}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

# smite_arrow
#declare loot_table sco_items:arrow/smite_arrow
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:arrow/smite_arrow
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 3
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:21}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

# cure_arrow
#declare loot_table sco_items:arrow/cure_arrow
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:arrow/cure_arrow
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 3
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:21}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

# steel_arrow
#declare loot_table sco_items:arrow/steel_arrow
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:arrow/steel_arrow
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 3
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:64}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _
