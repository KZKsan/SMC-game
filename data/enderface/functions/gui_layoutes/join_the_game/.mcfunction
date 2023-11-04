#>enderface:gui_layoutes/join_the_game/
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air
item replace entity @s enderchest.10 with red_wool{display:{Name:'[{"text":"Redチームに参加","color":"#FF0000","bold":false,"italic":false}]'},enderfaceItem:1b}
item replace entity @s enderchest.11 with blue_wool{display:{Name:'[{"text":"Blueチームに参加","color":"blue","bold":false,"italic":false}]'},enderfaceItem:1b}
execute if data storage sco:config game{can_team_select:0b} run item replace entity @s enderchest.9 with white_wool{display:{Name:'[{"text":"ゲームに参加","color":"#AA5555","bold":false,"italic":false}]'},enderfaceItem:1b}
execute if data storage sco:config game{can_team_select:1b} run item replace entity @s enderchest.9 with white_wool{display:{Name:'[{"text":"ランダムなチームに参加","color":"#AA5555","bold":false,"italic":false}]'},enderfaceItem:1b}
item replace entity @s enderchest.17 with ender_pearl{display:{Name:'[{"text":"観戦","color":"#808080","bold":false,"italic":false}]'},enderfaceItem:1b}


item modify entity @s[team=random_team] enderchest.9 enderface:selected
item modify entity @s[team=red] enderchest.10 enderface:selected
item modify entity @s[team=blue] enderchest.11 enderface:selected
item modify entity @s[team=spectator] enderchest.17 enderface:selected

execute if data storage sco:config game{can_team_select:0b} run item replace entity @s enderchest.10 with air
execute if data storage sco:config game{can_team_select:0b} run item replace entity @s enderchest.11 with air