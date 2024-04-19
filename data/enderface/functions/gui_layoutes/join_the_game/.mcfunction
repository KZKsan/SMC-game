#>enderface:gui_layoutes/join_the_game/
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

execute if entity @s[predicate=sneaking,tag=gm] run data modify storage enderface:data gui_name set value "game_settings/"
execute if entity @s[predicate=sneaking,tag=gm] run return 0

loot replace entity @s enderchest.10 loot enderface:sco_game_join/red
loot replace entity @s enderchest.11 loot enderface:sco_game_join/blue
execute if data storage sco:config game{can_team_select:0b} run loot replace entity @s enderchest.9 loot enderface:sco_game_join/join
execute if data storage sco:config game{can_team_select:1b} run loot replace entity @s enderchest.9 loot enderface:sco_game_join/random_team
loot replace entity @s enderchest.15 loot enderface:sco_game_join/practice/team_joining
loot replace entity @s[predicate=!sco:game_join,team=!spectator] enderchest.15 loot enderface:sco_game_join/practice/none
loot replace entity @s enderchest.17 loot enderface:sco_game_join/spectator


execute if data storage sco:config game{can_team_select:0b} run item modify entity @s[predicate=sco:game_join] enderchest.9 enderface:selected
execute if data storage sco:config game{can_team_select:1b} run item modify entity @s[team=random_team] enderchest.9 enderface:selected
item modify entity @s[team=red] enderchest.10 enderface:selected
item modify entity @s[team=blue] enderchest.11 enderface:selected
item modify entity @s[team=spectator] enderchest.17 enderface:selected

execute if data storage sco:config game{can_team_select:0b} run item replace entity @s enderchest.10 with air
execute if data storage sco:config game{can_team_select:0b} run item replace entity @s enderchest.11 with air