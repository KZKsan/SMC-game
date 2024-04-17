#>enderface:gui_layoutes/shop/preview_trade/add_sell_icon/loop
#@within enderface:gui_layoutes/shop/preview_trade/add_sell_icon/
#@private
data remove storage c_str str
data modify storage c_str str append value '[{"text":"","color":white,"italic":false},'
execute if data storage _ data_fetch.sell[0].tag.display.Name run data modify storage c_str str append string storage _ data_fetch.sell[0].tag.display.Name
execute unless data storage _ data_fetch.sell[0].tag.display.Name run data modify storage c_str str append value '"'
execute unless data storage _ data_fetch.sell[0].tag.display.Name run data modify storage c_str str append from storage _ data_fetch.sell[0].id
execute unless data storage _ data_fetch.sell[0].tag.display.Name run data modify storage c_str str append value '"'
data modify storage c_str str append value ","
data modify storage c_str str append value '{"text":" ---x"},"'
data modify storage c_str str append string storage _ data_fetch.sell[0].count 0 1
data modify storage c_str str append value '"]'
function c_str/
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0].tag.display.Lore append from storage c_str str[0]
data remove storage _ data_fetch.sell[0]
execute if data storage _ data_fetch.sell[0] run function enderface:gui_layoutes/shop/preview_trade/add_sell_icon/loop
