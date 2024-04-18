#>enderface:gui_layoutes/join_the_game/
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

execute if entity @s[predicate=sneaking,tag=gm] run data modify storage enderface:data gui_name set value "game_settings/"
execute if entity @s[predicate=sneaking,tag=gm] run return 0

item replace entity @s enderchest.10 with red_wool{display:{Name:'[{"text":"Redチームに参加","color":"#FF0000","bold":false,"italic":false}]'},enderface_item:1b}
item replace entity @s enderchest.11 with blue_wool{display:{Name:'[{"text":"Blueチームに参加","color":"blue","bold":false,"italic":false}]'},enderface_item:1b}
execute if data storage sco:config game{can_team_select:0b} run item replace entity @s enderchest.9 with white_wool{display:{Name:'[{"text":"ゲームに参加","color":"#AA5555","bold":false,"italic":false}]'},enderface_item:1b}
execute if data storage sco:config game{can_team_select:1b} run item replace entity @s enderchest.9 with white_wool{display:{Name:'[{"text":"ランダムなチームに参加","color":"#AA5555","bold":false,"italic":false}]'},enderface_item:1b}
item replace entity @s enderchest.15 with wooden_sword{display:{Name:'[{"text":"訓練所","color":"#00CC00","bold":false,"italic":false}]',Lore:['{"text": "[注意] チーム・観戦から自動的に退出します", "italic": false, "color": "dark_red"}']},enderface_item:1b,HideFlags:2}
item replace entity @s[predicate=!sco:game_join,team=!spectator] enderchest.15 with wooden_sword{display:{Name:'[{"text":"訓練所","color":"#00CC00","bold":false,"italic":false}]'},enderface_item:1b,HideFlags:2}
item replace entity @s enderchest.17 with ender_pearl{display:{Name:'[{"text":"観戦","color":"#808080","bold":false,"italic":false}]'},enderface_item:1b}


execute if data storage sco:config game{can_team_select:0b} run item modify entity @s[predicate=sco:game_join] enderchest.9 enderface:selected
execute if data storage sco:config game{can_team_select:1b} run item modify entity @s[team=random_team] enderchest.9 enderface:selected
item modify entity @s[team=red] enderchest.10 enderface:selected
item modify entity @s[team=blue] enderchest.11 enderface:selected
item modify entity @s[team=spectator] enderchest.17 enderface:selected

execute if data storage sco:config game{can_team_select:0b} run item replace entity @s enderchest.10 with air
execute if data storage sco:config game{can_team_select:0b} run item replace entity @s enderchest.11 with air