#>enderface:gui_layoutes/shop/0
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

item replace entity @s enderchest.0 with iron_sword{click_evets:{click_sounds:[{sound:"ui.button.click"}]}}
item modify entity @s enderchest.0 enderface:enderfaceitem