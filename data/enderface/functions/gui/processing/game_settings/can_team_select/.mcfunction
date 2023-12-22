#>enderface:gui/processing/game_settings/can_team_select/
#@within enderface:gui/processing/game_settings/
execute store success storage sco:config game.can_team_select byte 1 if data storage sco:config game{can_team_select:false}
execute if data storage sco:config game{can_team_select:false} run team empty red
execute if data storage sco:config game{can_team_select:false} run team empty blue
execute if data storage sco:config game{can_team_select:false} run team empty random_team
execute if data storage sco:config game{can_team_select:false} run team join random_team @a[predicate=sco:game_join]