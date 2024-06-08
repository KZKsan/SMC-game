#>enderface:gui/test
#@within enderface:gui/**
#execute if data storage enderface:data gui_intaract{intaract:0b} run say "操作: その他"
#execute if data storage enderface:data gui_intaract{intaract:1b} run say "操作: クリック"
#execute if data storage enderface:data gui_intaract{intaract:2b} run say "操作: シフト+クリック"
#execute if data storage enderface:data gui_intaract{intaract:3b} run say "操作: オフハンド"
#execute if data storage enderface:data gui_intaract{intaract:4b} run say "操作: 捨てる"
tellraw @p [{"text": "操作:"},{"nbt":"gui_intaract.intaract","storage":"enderface:data"}]
tellraw @p [{"text": "クリック:"},{"nbt":"gui_intaract.click","storage":"enderface:data"}]
tellraw @p [{"text": "動かしたアイテム:"},{"nbt":"gui_intaract.Item","storage":"enderface:data"}]
tellraw @p [{"text": "追加したアイテム:"},{"nbt":"gui_add","storage":"enderface:data"}]
tellraw @p [{"text": "インベントリ:"},{"nbt":"Inventory","entity":"@s"}]