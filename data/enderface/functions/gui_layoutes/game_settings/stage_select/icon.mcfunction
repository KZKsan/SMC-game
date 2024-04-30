#>enderface:gui_layoutes/game_settings/stage_select/icon
#@within enderface:gui_layoutes/game_settings/
summon item_display ~ ~ ~ {Tags:[enderface,item_modify]}
$loot replace entity @e[type=item_display,tag=enderface,tag=item_modify,limit=1,distance=..1] container.0 loot sco:stage_icon/$(stage)
data modify storage enderface:data data_fetch.name set from entity @e[type=item_display,tag=enderface,tag=item_modify,limit=1,distance=..1] item.components."minecraft:custom_name"
item modify entity @e[type=item_display,tag=enderface,tag=item_modify,limit=1,distance=..1] container.0 enderface:game_settings/stage
data modify entity @e[type=item_display,tag=enderface,tag=item_modify,limit=1,distance=..1] item.components."minecraft:lore" append from storage enderface:data data_fetch.name
item replace entity @s enderchest.9 from entity @e[type=item_display,tag=enderface,tag=item_modify,limit=1,distance=..1] container.0
kill @e[type=item_display,tag=enderface,tag=item_modify,limit=1,distance=..1]