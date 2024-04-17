#>enderface:gui/processing/shop/trade/buy/loop
#@within enderface:gui/processing/shop/trade/buy/
#@private
## 仮インベントリを設定・初期化
data modify storage enderface:data latest_inventory set from storage enderface:data now_inventory
data modify storage enderface:data now_inventory set value []

## 購入に必要な数を読み込み
execute store result score #count _ run data get storage enderface:data shop.trade_data.buy[0].count

## 必要な数あるかをチェック
execute if score #count _ matches 1.. run function enderface:gui/processing/shop/trade/buy/check
data remove storage enderface:data shop.trade_data.buy[0]
execute store success storage enderface:data shop.success byte 1 if score #count _ matches 0

## ループ
execute if data storage enderface:data shop{success:1b} if data storage enderface:data shop.trade_data.buy[0] run function enderface:gui/processing/shop/trade/buy/loop