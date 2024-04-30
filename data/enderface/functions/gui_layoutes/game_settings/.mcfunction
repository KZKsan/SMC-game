#>enderface:gui_layoutes/game_settings/
#@within enderface:gui_layoutes/load
function enderface:gui_layoutes/generic/set_air

item replace entity @s enderchest.9 with grass_block[item_name='{"text": ">ステージ","italic": false}',custom_data={click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"game_settings/stage_select"},enderface_item:1b}]
function enderface:gui_layoutes/game_settings/other_rules/set {rule_id:"can_team_select", rule_name:"チーム選択", slot:11}
function enderface:gui_layoutes/game_settings/other_rules/set {rule_id:"show_hp", rule_name:"HPの表示", slot:12}
function enderface:gui_layoutes/game_settings/other_rules/set {rule_id:"show_enemy_team_name", rule_name:"敵チームの名前の表示", slot:13}
function enderface:gui_layoutes/game_settings/other_rules/set {rule_id:"friendlyfire", rule_name:"フレンドリーファイア", slot:14}
function enderface:gui_layoutes/game_settings/other_rules/set {rule_id:"can_pickup_arrows", rule_name:"矢の回収", slot:15}

function enderface:gui_layoutes/game_settings/rule_settings/icon with storage sco:config game
loot replace entity @s enderchest.7 loot enderface:sco_settings/announce/settings
loot replace entity @s enderchest.8 loot enderface:sco_settings/announce/start_game

loot replace entity @s enderchest.17 loot enderface:sco_settings/start

data modify storage p-storage _[0].data.page set value 0