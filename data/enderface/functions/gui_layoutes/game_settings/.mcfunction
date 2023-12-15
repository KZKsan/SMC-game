#>enderface:gui_layoutes/game_settings/
#@within enderface:gui_layoutes/load
function enderface:gui_layoutes/generic/set_air

item replace entity @s enderchest.9 with grass_block{enderfaceItem:1b,display:{Name:'{"text": ">ステージ","italic": false}'},click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"game_settings/stage_select"}}
execute if data storage sco:config game{show_hp:false} run item replace entity @s enderchest.14 with gray_dye{enderfaceItem:1b,display:{Name:'{"text": ">HPの表示","italic": false}',Lore:['{"text": "|OFF|","color": "gray","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.click"}]}}
execute if data storage sco:config game{show_hp:true} run item replace entity @s enderchest.14 with lime_dye{enderfaceItem:1b,display:{Name:'{"text": ">HPの表示","italic": false}',Lore:['{"text": "|ON|","color": "green","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.click"}]}}
execute if data storage sco:config game{friendlyfire:false} run item replace entity @s enderchest.15 with gray_dye{enderfaceItem:1b,display:{Name:'{"text": ">フレンドリーファイア","italic": false}',Lore:['{"text": "|OFF|","color": "gray","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.click"}]}}
execute if data storage sco:config game{friendlyfire:true} run item replace entity @s enderchest.15 with lime_dye{enderfaceItem:1b,display:{Name:'{"text": ">フレンドリーファイア","italic": false}',Lore:['{"text": "|ON|","color": "green","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.click"}]}}

item replace entity @s enderchest.17 with gold_block{enderfaceItem:1b,display:{Name:'{"text": ">ゲーム開始","italic": false}'},click_events:{click_sounds:[{sound:"ui.button.click"}]}}


data modify storage p-storage _[0].data.page set value 0