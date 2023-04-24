#>enderface:gui_layoutes/set
#@within enderface:gui_layoutes
execute if entity @e[predicate=enderface:interface_type/shop,distance=..6] run data modify storage enderface:data gui_name set value "shop/0"
execute if entity @e[predicate=enderface:interface_type/shop_diagonal,distance=..6] run data modify storage enderface:data gui_name set value "shop_diagonal/0"
execute if entity @e[predicate=enderface:interface_type/lobby/team_select,distance=..6] run data modify storage enderface:data gui_name set value "lobby/team_select"
execute if entity @e[predicate=enderface:interface_type/lobby/game_settings,distance=..6] run data modify storage enderface:data gui_name set value "lobby/game_settings/0"