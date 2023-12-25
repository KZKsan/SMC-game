#>enderface:gui/processing/game_settings/show_enemy_team_name/
#@within enderface:gui/processing/game_settings/
execute store success storage sco:config game.show_enemy_team_name byte 1 if data storage sco:config game{show_enemy_team_name:false}
