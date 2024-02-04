#>enderface:gui_layoutes/set
#@within enderface:gui_layoutes
execute if entity @e[predicate=enderface:interface_type/shop,distance=..6] run data modify storage enderface:data gui_name set value "shop/0"
execute if entity @e[predicate=enderface:interface_type/join_the_game,distance=..6] run data modify storage enderface:data gui_name set value "join_the_game/"
execute if entity @e[predicate=enderface:interface_type/game_settings,distance=..6] run data modify storage enderface:data gui_name set value "game_settings/"
execute if entity @e[predicate=enderface:interface_type/guide_book,distance=..6] run data modify storage enderface:data gui_name set value "guide/"
