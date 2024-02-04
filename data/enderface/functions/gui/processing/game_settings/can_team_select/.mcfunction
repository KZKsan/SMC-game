#>enderface:gui/processing/game_settings/can_team_select/
#@within enderface:gui/processing/game_settings/
execute store success storage sco:config game.can_team_select byte 1 if data storage sco:config game{can_team_select:false}
execute if data storage sco:config game{can_team_select:false} run function enderface:gui/processing/game_settings/can_team_select/move_team