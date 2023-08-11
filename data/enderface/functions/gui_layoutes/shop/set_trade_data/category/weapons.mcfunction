#>enderface:gui_layoutes/shop/set_trade_data/category/weapons
#@within tag/function enderface:set_trade_data
function enderface:gui_layoutes/shop/set_trade_data/reset_data



loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:sample_item
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 40
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with diamond 5
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop trade_data append from storage sco:shop _

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with brick 4
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:16}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with coal 16
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop trade_data append from storage sco:shop _

loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:crossbow
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with bow 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop trade_data append from storage sco:shop _

## 一括設定する方法 必要アイテム1~2種類と購入アイテム1種類を決められる 
### 購入アイテム チェスト付きトロッコのcontainer.0に入れる GUI上は購入アイテムがそのままアイコンになる
    item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with netherite_sword 1

### 必要アイテム チェスト付きトロッコのcontainer.1~2に入れる
    item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with iron_sword 1
    item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.2 with diamond 5

### 連続購入設定 click:そのままクリックしたときの購入回数 sneak:シフトクリックしたときの購入回数
    data modify storage sco:shop sell_count set value {click:1,sneak:1}

### 設定を反映し、取引を追加する
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/all
data modify storage sco:shop trade_data append from storage sco:shop _


## 個別に設定する方法
### アイコン チェスト付きトロッコのcontainer.0に入れる (設定処理後 トロッコ内にアイテムが残る)
    item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with diamond_pickaxe 1
    function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon

### 購入アイテム チェスト付きトロッコに入れる(どこでもOK, 複数可, 設定処理後 トロッコ内のアイテムは消える(いろいろ事故ったのでこの形式))
    ## ここではアイコンのアイテムをそのまま購入アイテムとして設定している(別のアイテムに変えてもよい)
    #(アイテムを変える場合使う)item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with diamond_pickaxe 1
    function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell

### 必要アイテム チェスト付きトロッコに入れる(どこでもOK, 複数可, 設定処理後 トロッコ内のアイテムは消える(いろいろ事故ったのでこの形式))
    item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_sword 1
    item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with diamond 5
    function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy

### 連続購入設定 click:そのままクリックしたときの購入回数 sneak:シフトクリックしたときの購入回数
    data modify storage sco:shop sell_count set value {click:1,sneak:1}
    function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count

### 取引を追加する
data modify storage sco:shop trade_data append from storage sco:shop _

function enderface:gui_layoutes/shop/set_trade_data/single_data/clau_solas
function enderface:gui_layoutes/shop/set_trade_data/single_data/magic_book
function enderface:gui_layoutes/shop/set_trade_data/single_data/magic_book_of_wind
function enderface:gui_layoutes/shop/set_trade_data/single_data/smash_pickaxe
function enderface:gui_layoutes/shop/set_trade_data/single_data/poison_spear
function enderface:gui_layoutes/shop/set_trade_data/single_data/crystal_sword
function enderface:gui_layoutes/shop/set_trade_data/single_data/leg_scraping_axe
function enderface:gui_layoutes/shop/set_trade_data/single_data/dimensional_sword


data modify storage sco:shop weapons set from storage sco:shop trade_data
