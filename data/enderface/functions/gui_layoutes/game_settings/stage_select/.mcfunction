#>enderface:gui_layoutes/game_settings/stage_select/
#@within enderface:gui_layoutes/load
function enderface:gui_layoutes/generic/set_air
item replace entity @s enderchest.0 with grass_block{enderfaceItem:1b,display:{Name:'{"text": "ラクエン","italic": false,"color":"#55AADD"}'},click_events:{click_sounds:[{sound:"ui.button.click"}],set_stage:"paradise"}}
item replace entity @s enderchest.1 with salmon{enderfaceItem:1b,display:{Name:'{"text": "シェケナダム","italic": false,"color":"#55AADD"}'},click_events:{click_sounds:[{sound:"ui.button.click"}],set_stage:"shekenadam"}}
item replace entity @s enderchest.2 with cherry_sapling{enderfaceItem:1b,display:{Name:'{"text": "桜邸","italic": false,"color":"#55AADD"}'},click_events:{click_sounds:[{sound:"ui.button.click"}],set_stage:"sakura_mansion"}}
item replace entity @s enderchest.3 with minecart{enderfaceItem:1b,display:{Name:'{"text": "都心な駅","italic": false,"color":"#55AADD"}'},click_events:{click_sounds:[{sound:"ui.button.click"}],set_stage:"station"}}
item replace entity @s enderchest.4 with jungle_sapling{enderfaceItem:1b,display:{Name:'{"text": "かそかそ密林","italic": false,"color":"#55AADD"}'},click_events:{click_sounds:[{sound:"ui.button.click"}],set_stage:"jungle"}}
item replace entity @s enderchest.5 with bucket{enderfaceItem:1b,display:{Name:'{"text": "centrifuge","italic": false,"color":"#55AADD"}'},click_events:{click_sounds:[{sound:"ui.button.click"}],set_stage:"centrifuge"}}
item replace entity @s enderchest.9 with smooth_basalt{enderfaceItem:1b,display:{Name:'{"text": "deep_cave","italic": false,"color":"#55AADD"}'},click_events:{click_sounds:[{sound:"ui.button.click"}],set_stage:"deep_cave"}}

item replace entity @s enderchest.8 with jigsaw{enderfaceItem:1b,display:{Name:'{"text": "ランダム","italic": false,"color":"#55AADD"}'},click_events:{click_sounds:[{sound:"ui.button.click"}],set_stage:"sco_random"}}

function enderface:gui_layoutes/game_settings/stage_select/selected_icon/ with storage sco:config

loot replace entity @s enderchest.26 loot enderface:back_gui